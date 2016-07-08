void ClustererByDbRect::AbsorbPlane(Segment& basePlane, Segment& mergedPlane)
{
    if(basePlane.id == mergedPlane.id)
        return;
    for(int y=mergedPlane.rect.yl; y<=mergedPlane.rect.yh; y++)
    {
        for(int x=mergedPlane.rect.xl; x<=mergedPlane.rect.xh; x++)
        {
            if(objectMap[IMGIDX(y,x)]==mergedPlane.id)
                objectMap[IMGIDX(y,x)] = basePlane.id;
        }
    }
    mergedPlane.id = Segment::SEG_INVALID;
    basePlane.numpt += mergedPlane.numpt;
    basePlane.rect.ExpandRange(mergedPlane.rect);
}

void ClustererByDbRect::AbsorbPlanePart(Segment& basePlane, Segment& mergedPartPlane, ImRect& intersectRect, int numIntersectpt)
{    
	if(basePlane.id == mergedPlane.id)
        return;
    for(int y=intersectRect.yl; y<=intersectRect.yh; y++)
    {
        for(int x=intersectRect.xl; x<=intersectRect.xh; x++)
        {
            if(objectMap[IMGIDX(y,x)]==mergedPlane.id)
                objectMap[IMGIDX(y,x)] = basePlane.id;
        }
    }
    basePlane.numpt += numIntersectpt;
	mergedPlane.numpt -= numIntersectpt;
    basePlane.rect.ExpandRange(intersectRect);
	mergedPartPlane.rect.ReduceRange(intersectRect);
	//Imrect의 하위 함수 ReduceRange 새로 만들 것.
}
