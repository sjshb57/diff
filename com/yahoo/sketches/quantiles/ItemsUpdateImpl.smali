.class final Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;
.super Ljava/lang/Object;
.source "ItemsUpdateImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inPlacePropagateCarry(I[Ljava/lang/Object;I[Ljava/lang/Object;IZLcom/yahoo/sketches/quantiles/ItemsSketch;)V
    .registers 27
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
            "startingLevel",
            "sizeKBuf",
            "sizeKStart",
            "size2KBuf",
            "size2KStart",
            "doUpdateVersion",
            "sketch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[TT;IZ",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    .line 44
    invoke-virtual/range {p6 .. p6}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object v11

    .line 45
    invoke-virtual/range {p6 .. p6}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBitPattern()J

    move-result-wide v12

    .line 46
    invoke-virtual/range {p6 .. p6}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v14

    .line 48
    invoke-static {v12, v13, v0}, Lcom/yahoo/sketches/quantiles/Util;->lowestZeroBitStartingAt(JI)I

    move-result v15

    if-eqz p5, :cond_1f

    add-int/lit8 v1, v15, 0x2

    mul-int/2addr v1, v14

    .line 52
    invoke-static {v9, v10, v11, v1, v14}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->zipSize2KBuffer([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_29

    :cond_1f
    add-int/lit8 v1, v15, 0x2

    mul-int/2addr v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 57
    invoke-static {v2, v3, v11, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_29
    move v8, v0

    :goto_2a
    if-ge v8, v15, :cond_5e

    add-int/lit8 v1, v8, 0x2

    mul-int v7, v1, v14

    add-int/lit8 v1, v15, 0x2

    mul-int v6, v1, v14

    .line 69
    invoke-virtual/range {p6 .. p6}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v16

    move-object v1, v11

    move v2, v7

    move-object v3, v11

    move v4, v6

    move-object/from16 v5, p3

    move/from16 v17, v15

    move v15, v6

    move/from16 v6, p4

    move-wide/from16 v18, v12

    move v12, v7

    move v7, v14

    move v13, v8

    move-object/from16 v8, v16

    .line 65
    invoke-static/range {v1 .. v8}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->mergeTwoSizeKBuffers([Ljava/lang/Object;I[Ljava/lang/Object;I[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 70
    invoke-static {v9, v10, v11, v15, v14}, Lcom/yahoo/sketches/quantiles/ItemsUpdateImpl;->zipSize2KBuffer([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    add-int/lit8 v8, v13, 0x3

    mul-int/2addr v8, v14

    const/4 v1, 0x0

    .line 75
    invoke-static {v11, v12, v8, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    add-int/lit8 v8, v13, 0x1

    move/from16 v15, v17

    move-wide/from16 v12, v18

    goto :goto_2a

    :cond_5e
    move-wide/from16 v18, v12

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    add-long v12, v18, v0

    move-object/from16 v0, p6

    .line 79
    iput-wide v12, v0, Lcom/yahoo/sketches/quantiles/ItemsSketch;->bitPattern_:J

    return-void
.end method

.method static maybeGrowLevels(Lcom/yahoo/sketches/quantiles/ItemsSketch;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sketch",
            "newN"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;J)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v0

    .line 20
    invoke-static {v0, p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->computeNumLevelsNeeded(IJ)I

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    add-int/lit8 p1, p1, 0x2

    mul-int/2addr p1, v0

    .line 29
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBufferAllocatedCount()I

    move-result p2

    if-gt p1, p2, :cond_15

    return-void

    .line 33
    :cond_15
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/yahoo/sketches/quantiles/ItemsSketch;->combinedBuffer_:[Ljava/lang/Object;

    .line 34
    iput p1, p0, Lcom/yahoo/sketches/quantiles/ItemsSketch;->combinedBufferItemCapacity_:I

    return-void
.end method

.method private static mergeTwoSizeKBuffers([Ljava/lang/Object;I[Ljava/lang/Object;I[Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "keySrc1",
            "arrStart1",
            "keySrc2",
            "arrStart2",
            "keyDst",
            "arrStart3",
            "k",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;I[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    add-int v0, p1, p6

    add-int/2addr p6, p3

    :goto_3
    if-ge p1, v0, :cond_27

    if-ge p3, p6, :cond_27

    .line 107
    aget-object v1, p2, p3

    aget-object v2, p0, p1

    invoke-interface {p7, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1c

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p3, 0x1

    .line 108
    aget-object p3, p2, p3

    aput-object p3, p4, p5

    move p5, v1

    move p3, v2

    goto :goto_3

    :cond_1c
    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 110
    aget-object p1, p0, p1

    aput-object p1, p4, p5

    move p5, v1

    move p1, v2

    goto :goto_3

    :cond_27
    if-ge p1, v0, :cond_2e

    sub-int/2addr v0, p1

    .line 115
    invoke-static {p0, p1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_32

    :cond_2e
    sub-int/2addr p6, p3

    .line 118
    invoke-static {p0, p3, p4, p5, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_32
    return-void
.end method

.method private static zipSize2KBuffer([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bufA",
            "startA",
            "bufC",
            "startC",
            "k"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/yahoo/sketches/quantiles/ItemsSketch;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    add-int/2addr p4, p3

    add-int/2addr p1, v0

    :goto_8
    if-ge p3, p4, :cond_13

    .line 90
    aget-object v0, p0, p1

    aput-object v0, p2, p3

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method
