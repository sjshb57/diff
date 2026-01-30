.class final Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;
.super Ljava/lang/Object;
.source "ItemsMergeImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blockyTandemMergeSort([Ljava/lang/Object;[JIILjava/util/Comparator;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "keyArr",
            "valArr",
            "arrLen",
            "blkSize",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[JII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    if-gt p2, p3, :cond_3

    return-void

    :cond_3
    div-int v0, p2, p3

    mul-int v1, v0, p3

    if-ge v1, p2, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    move v6, v0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p3

    move v8, p2

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->blockyTandemMergeSortRecursion([Ljava/lang/Object;[J[Ljava/lang/Object;[JIIIILjava/util/Comparator;)V

    return-void
.end method

.method private static blockyTandemMergeSortRecursion([Ljava/lang/Object;[J[Ljava/lang/Object;[JIIIILjava/util/Comparator;)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "keySrc",
            "valSrc",
            "keyDst",
            "valDst",
            "grpStart",
            "grpLen",
            "blkSize",
            "arrLim",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[J[TT;[JIIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    move/from16 v0, p5

    move/from16 v9, p7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    div-int/lit8 v10, v0, 0x2

    sub-int v11, v0, v10

    add-int v12, p4, v10

    move-object v0, p2

    move-object/from16 v1, p3

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p4

    move v5, v10

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->blockyTandemMergeSortRecursion([Ljava/lang/Object;[J[Ljava/lang/Object;[JIIIILjava/util/Comparator;)V

    move v4, v12

    move v5, v11

    invoke-static/range {v0 .. v8}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->blockyTandemMergeSortRecursion([Ljava/lang/Object;[J[Ljava/lang/Object;[JIIIILjava/util/Comparator;)V

    mul-int v8, p4, p6

    mul-int v4, v12, p6

    mul-int v3, v10, p6

    mul-int v11, v11, p6

    add-int v0, v4, v11

    if-le v0, v9, :cond_34

    sub-int v0, v9, v4

    move v5, v0

    goto :goto_35

    :cond_34
    move v5, v11

    :goto_35
    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->tandemMerge([Ljava/lang/Object;[JIIII[Ljava/lang/Object;[JILjava/util/Comparator;)V

    return-void
.end method

.method static downSamplingMergeInto(Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "src",
            "tgt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v9

    rem-int v0, v9, v8

    if-nez v0, :cond_bf

    div-int v10, v9, v8

    const-string v0, "source.getK()/target.getK() ratio"

    invoke-static {v10, v0}, Lcom/yahoo/sketches/Util;->checkIfPowerOf2(ILjava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getN()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getN()J

    move-result-wide v3

    add-long v13, v1, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBaseBufferCount()I

    move-result v3

    if-ge v2, v3, :cond_3b

    aget-object v3, v0, v2

    invoke-virtual {v7, v3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->update(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3b
    invoke-static {v7, v13, v14}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->maybeGrowLevels(Lcom/yahoo/sketches/quantiles/ItemsSketch;J)V

    mul-int/lit8 v0, v8, 0x2

    new-array v15, v0, [Ljava/lang/Object;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBitPattern()J

    move-result-wide v2

    move/from16 v16, v1

    move-wide/from16 v17, v2

    :goto_4c
    const-wide/16 v0, 0x0

    cmp-long v2, v17, v0

    if-eqz v2, :cond_7f

    const-wide/16 v2, 0x1

    and-long v2, v17, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_75

    add-int/lit8 v0, v16, 0x2

    mul-int v1, v0, v9

    const/4 v3, 0x0

    move-object v0, v12

    move-object v2, v6

    move v4, v8

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->justZipWithStride([Ljava/lang/Object;I[Ljava/lang/Object;III)V

    add-int v0, v16, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, v6

    move-object v3, v15

    move-object/from16 v19, v6

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->inPlacePropagateCarry(I[Ljava/lang/Object;I[Ljava/lang/Object;IZLcom/yahoo/sketches/quantiles/ItemsSketch;)V

    goto :goto_77

    :cond_75
    move-object/from16 v19, v6

    :goto_77
    add-int/lit8 v16, v16, 0x1

    const/4 v0, 0x1

    ushr-long v17, v17, v0

    move-object/from16 v6, v19

    goto :goto_4c

    :cond_7f
    iput-wide v13, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->n_:J

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMaxValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMinValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMaxValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMinValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_a4

    if-eqz v2, :cond_a4

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_a0

    goto :goto_a1

    :cond_a0
    move-object v0, v2

    :goto_a1
    iput-object v0, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->maxValue_:Ljava/lang/Object;

    goto :goto_a8

    :cond_a4
    if-nez v2, :cond_a8

    iput-object v0, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->maxValue_:Ljava/lang/Object;

    :cond_a8
    :goto_a8
    if-eqz v1, :cond_ba

    if-eqz v3, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_b7

    move-object v1, v3

    :cond_b7
    iput-object v1, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->minValue_:Ljava/lang/Object;

    goto :goto_be

    :cond_ba
    if-nez v3, :cond_be

    iput-object v1, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->minValue_:Ljava/lang/Object;

    :cond_be
    :goto_be
    return-void

    :cond_bf
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    const-string v1, "source.getK() must equal target.getK() * 2^(nonnegative integer)."

    invoke-direct {v0, v1}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static justZipWithStride([Ljava/lang/Object;I[Ljava/lang/Object;III)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bufSrc",
            "startSrc",
            "bufC",
            "startC",
            "kC",
            "stride"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;III)V"
        }
    .end annotation

    sget-object v0, Lcom/yahoo/sketches/quantiles/ItemsSketch;->rand:Ljava/util/Random;

    invoke-virtual {v0, p5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p4, p3

    add-int/2addr p1, v0

    :goto_8
    if-ge p3, p4, :cond_12

    aget-object v0, p0, p1

    aput-object v0, p2, p3

    add-int/2addr p1, p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_12
    return-void
.end method

.method static mergeInto(Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "src",
            "tgt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getN()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getN()J

    move-result-wide v3

    if-eq v0, v8, :cond_18

    invoke-static/range {p0 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->downSamplingMergeInto(Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    return-void

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object v9

    add-long v10, v3, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBaseBufferCount()I

    move-result v2

    if-ge v1, v2, :cond_2e

    aget-object v2, v9, v1

    invoke-virtual {v7, v2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->update(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2e
    invoke-static {v7, v10, v11}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->maybeGrowLevels(Lcom/yahoo/sketches/quantiles/ItemsSketch;J)V

    mul-int/lit8 v1, v8, 0x2

    new-array v12, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBitPattern()J

    move-result-wide v1

    move v13, v0

    move-wide v14, v1

    :goto_3b
    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-eqz v2, :cond_5b

    const-wide/16 v2, 0x1

    and-long/2addr v2, v14

    cmp-long v0, v2, v0

    if-lez v0, :cond_56

    add-int/lit8 v0, v13, 0x2

    mul-int v2, v0, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, v13

    move-object v1, v9

    move-object v3, v12

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->inPlacePropagateCarry(I[Ljava/lang/Object;I[Ljava/lang/Object;IZLcom/yahoo/sketches/quantiles/ItemsSketch;)V

    :cond_56
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x1

    ushr-long/2addr v14, v0

    goto :goto_3b

    :cond_5b
    iput-wide v10, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->n_:J

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMaxValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMinValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMaxValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMinValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_80

    if-eqz v2, :cond_80

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_7c

    goto :goto_7d

    :cond_7c
    move-object v0, v2

    :goto_7d
    iput-object v0, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->maxValue_:Ljava/lang/Object;

    goto :goto_84

    :cond_80
    if-nez v2, :cond_84

    iput-object v0, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->maxValue_:Ljava/lang/Object;

    :cond_84
    :goto_84
    if-eqz v1, :cond_96

    if-eqz v3, :cond_96

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_93

    move-object v1, v3

    :cond_93
    iput-object v1, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->minValue_:Ljava/lang/Object;

    goto :goto_9a

    :cond_96
    if-nez v3, :cond_9a

    iput-object v1, v7, Lcom/yahoo/sketches/quantiles/ItemsSketch;->minValue_:Ljava/lang/Object;

    :cond_9a
    :goto_9a
    return-void
.end method

.method private static tandemMerge([Ljava/lang/Object;[JIIII[Ljava/lang/Object;[JILjava/util/Comparator;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "keySrc",
            "valSrc",
            "arrStart1",
            "arrLen1",
            "arrStart2",
            "arrLen2",
            "keyDst",
            "valDst",
            "arrStart3",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[JIIII[TT;[JI",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    add-int/2addr p3, p2

    add-int/2addr p5, p4

    :goto_2
    if-ge p2, p3, :cond_2a

    if-ge p4, p5, :cond_2a

    aget-object v0, p0, p4

    aget-object v1, p0, p2

    invoke-interface {p9, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1d

    aget-object v0, p0, p4

    aput-object v0, p6, p8

    aget-wide v0, p1, p4

    aput-wide v0, p7, p8

    add-int/lit8 p8, p8, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_1d
    aget-object v0, p0, p2

    aput-object v0, p6, p8

    aget-wide v0, p1, p2

    aput-wide v0, p7, p8

    add-int/lit8 p8, p8, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2a
    if-ge p2, p3, :cond_34

    sub-int/2addr p3, p2

    invoke-static {p0, p2, p6, p8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p2, p7, p8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3b

    :cond_34
    sub-int/2addr p5, p4

    invoke-static {p0, p4, p6, p8, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p4, p7, p8, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3b
    return-void
.end method
