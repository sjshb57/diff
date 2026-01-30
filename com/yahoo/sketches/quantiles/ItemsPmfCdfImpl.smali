.class Lcom/yahoo/sketches/quantiles/ItemsPmfCdfImpl;
.super Ljava/lang/Object;
.source "ItemsPmfCdfImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bilinearTimeIncrementHistogramCounters([Ljava/lang/Object;IIJ[Ljava/lang/Object;[JLjava/util/Comparator;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "samples",
            "offset",
            "numSamples",
            "weight",
            "splitPoints",
            "counters",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IIJ[TT;[J",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_20

    add-int v2, v1, p1

    aget-object v2, p0, v2

    move v3, v0

    :goto_9
    array-length v4, p5

    if-ge v3, v4, :cond_18

    aget-object v4, p5, v3

    invoke-interface {p7, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    :goto_18
    aget-wide v4, p6, v3

    add-long/2addr v4, p3

    aput-wide v4, p6, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method static getPMFOrCDF(Lcom/yahoo/sketches/quantiles/ItemsSketch;[Ljava/lang/Object;Z)[D
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sketch",
            "splitPoints",
            "isCDF"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;[TT;Z)[D"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/yahoo/sketches/quantiles/ItemsPmfCdfImpl;->internalBuildHistogram([Ljava/lang/Object;Lcom/yahoo/sketches/quantiles/ItemsSketch;)[J

    move-result-object p1

    array-length v0, p1

    new-array v1, v0, [D

    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    const/4 p0, 0x0

    if-eqz p2, :cond_1d

    const-wide/16 v4, 0x0

    :goto_11
    if-ge p0, v0, :cond_28

    aget-wide v6, p1, p0

    add-long/2addr v4, v6

    long-to-double v6, v4

    div-double/2addr v6, v2

    aput-wide v6, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    :cond_1d
    :goto_1d
    if-ge p0, v0, :cond_28

    aget-wide v4, p1, p0

    long-to-double v4, v4

    div-double/2addr v4, v2

    aput-wide v4, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1d

    :cond_28
    return-object v1
.end method

.method private static internalBuildHistogram([Ljava/lang/Object;Lcom/yahoo/sketches/quantiles/ItemsSketch;)[J
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "splitPoints",
            "sketch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)[J"
        }
    .end annotation

    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBaseBufferCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/yahoo/sketches/quantiles/ItemsUtil;->validateValues([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, v8

    add-int/lit8 v1, v0, 0x1

    new-array v10, v1, [J

    const/16 v1, 0x32

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    if-ge v0, v1, :cond_2b

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v7

    move-object v0, v9

    move-wide v3, v12

    move-object/from16 v5, p0

    move-object v6, v10

    invoke-static/range {v0 .. v7}, Lcom/yahoo/sketches/quantiles/ItemsPmfCdfImpl;->bilinearTimeIncrementHistogramCounters([Ljava/lang/Object;IIJ[Ljava/lang/Object;[JLjava/util/Comparator;)V

    goto :goto_3b

    :cond_2b
    invoke-static {v9, v11, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v7

    move-object v0, v9

    move-wide v3, v12

    move-object/from16 v5, p0

    move-object v6, v10

    invoke-static/range {v0 .. v7}, Lcom/yahoo/sketches/quantiles/ItemsPmfCdfImpl;->linearTimeIncrementHistogramCounters([Ljava/lang/Object;IIJ[Ljava/lang/Object;[JLjava/util/Comparator;)V

    :goto_3b
    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBitPattern()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v14

    move-wide/from16 v17, v12

    move v13, v11

    move-wide v11, v0

    move-wide/from16 v0, v17

    :goto_49
    const-wide/16 v2, 0x0

    cmp-long v4, v11, v2

    if-eqz v4, :cond_6f

    add-long v15, v0, v0

    const-wide/16 v0, 0x1

    and-long/2addr v0, v11

    cmp-long v0, v0, v2

    if-lez v0, :cond_69

    add-int/lit8 v0, v13, 0x2

    mul-int v1, v0, v14

    invoke-virtual/range {p1 .. p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v7

    move-object v0, v9

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, p0

    move-object v6, v10

    invoke-static/range {v0 .. v7}, Lcom/yahoo/sketches/quantiles/ItemsPmfCdfImpl;->linearTimeIncrementHistogramCounters([Ljava/lang/Object;IIJ[Ljava/lang/Object;[JLjava/util/Comparator;)V

    :cond_69
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x1

    ushr-long/2addr v11, v0

    move-wide v0, v15

    goto :goto_49

    :cond_6f
    return-object v10
.end method

.method static linearTimeIncrementHistogramCounters([Ljava/lang/Object;IIJ[Ljava/lang/Object;[JLjava/util/Comparator;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "samples",
            "offset",
            "numSamples",
            "weight",
            "splitPoints",
            "counters",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IIJ[TT;[J",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_1e

    array-length v2, p5

    if-ge v1, v2, :cond_1e

    add-int v2, v0, p1

    aget-object v2, p0, v2

    aget-object v3, p5, v1

    invoke-interface {p7, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1b

    aget-wide v2, p6, v1

    add-long/2addr v2, p3

    aput-wide v2, p6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    array-length p0, p5

    if-ne v1, p0, :cond_29

    aget-wide p0, p6, v1

    sub-int/2addr p2, v0

    int-to-long v2, p2

    mul-long/2addr p3, v2

    add-long/2addr p0, p3

    aput-wide p0, p6, v1

    :cond_29
    return-void
.end method
