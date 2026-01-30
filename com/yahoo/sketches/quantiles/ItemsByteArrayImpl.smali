.class final Lcom/yahoo/sketches/quantiles/ItemsByteArrayImpl;
.super Ljava/lang/Object;
.source "ItemsByteArrayImpl.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combinedBufferToItemsArray(Lcom/yahoo/sketches/quantiles/ItemsSketch;Z)[Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sketch",
            "ordered"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getRetainedItems()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMinValue()Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 85
    aput-object v1, v0, v2

    .line 86
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getMaxValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 87
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBaseBufferCount()I

    move-result v1

    .line 88
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object v5

    .line 91
    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBitPattern()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4f

    .line 96
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v10

    add-int/lit8 v11, v1, 0x2

    :goto_39
    cmp-long v12, v6, v8

    if-eqz v12, :cond_4f

    const-wide/16 v12, 0x1

    and-long/2addr v12, v6

    cmp-long v12, v12, v8

    if-lez v12, :cond_4b

    add-int/lit8 v12, v2, 0x2

    mul-int/2addr v12, v10

    .line 100
    invoke-static {v5, v12, v0, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v10

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    ushr-long/2addr v6, v4

    goto :goto_39

    :cond_4f
    if-eqz p1, :cond_59

    add-int/2addr v1, v3

    .line 106
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, v3, v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_59
    return-object v0
.end method

.method private static insertPre0(Lcom/yahoo/memory/WritableMemory;III)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "wmem",
            "preLongs",
            "flags",
            "k"
        }
    .end annotation

    .line 112
    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->insertPreLongs(Lcom/yahoo/memory/WritableMemory;I)V

    const/4 p1, 0x3

    .line 113
    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->insertSerVer(Lcom/yahoo/memory/WritableMemory;I)V

    .line 114
    sget-object p1, Lcom/yahoo/sketches/Family;->QUANTILES:Lcom/yahoo/sketches/Family;

    invoke-virtual {p1}, Lcom/yahoo/sketches/Family;->getID()I

    move-result p1

    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->insertFamilyID(Lcom/yahoo/memory/WritableMemory;I)V

    .line 115
    invoke-static {p0, p2}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->insertFlags(Lcom/yahoo/memory/WritableMemory;I)V

    .line 116
    invoke-static {p0, p3}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->insertK(Lcom/yahoo/memory/WritableMemory;I)V

    return-void
.end method

.method static toByteArray(Lcom/yahoo/sketches/quantiles/ItemsSketch;ZLcom/yahoo/sketches/ArrayOfItemsSerDe;)[B
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sketch",
            "ordered",
            "serDe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;Z",
            "Lcom/yahoo/sketches/ArrayOfItemsSerDe<",
            "TT;>;)[B"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x4

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const/16 v3, 0x10

    if-eqz p1, :cond_f

    move v1, v3

    :cond_f
    or-int/2addr v1, v2

    const/16 v2, 0x8

    or-int/2addr v1, v2

    if-eqz v0, :cond_24

    .line 45
    new-array p1, v2, [B

    .line 46
    invoke-static {p1}, Lcom/yahoo/memory/WritableMemory;->wrap([B)Lcom/yahoo/memory/WritableMemory;

    move-result-object p2

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result p0

    invoke-static {p2, v0, v1, p0}, Lcom/yahoo/sketches/quantiles/ItemsByteArrayImpl;->insertPre0(Lcom/yahoo/memory/WritableMemory;III)V

    return-object p1

    .line 53
    :cond_24
    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/ItemsByteArrayImpl;->combinedBufferToItemsArray(Lcom/yahoo/sketches/quantiles/ItemsSketch;Z)[Ljava/lang/Object;

    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Lcom/yahoo/sketches/ArrayOfItemsSerDe;->serializeToByteArray([Ljava/lang/Object;)[B

    move-result-object v7

    .line 57
    array-length p1, v7

    add-int/2addr p1, v3

    .line 58
    new-array p1, p1, [B

    .line 59
    invoke-static {p1}, Lcom/yahoo/memory/WritableMemory;->wrap([B)Lcom/yahoo/memory/WritableMemory;

    move-result-object v4

    const/4 p2, 0x2

    .line 62
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v0

    invoke-static {v4, p2, v1, v0}, Lcom/yahoo/sketches/quantiles/ItemsByteArrayImpl;->insertPre0(Lcom/yahoo/memory/WritableMemory;III)V

    .line 63
    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getN()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->insertN(Lcom/yahoo/memory/WritableMemory;J)V

    const/4 v8, 0x0

    .line 66
    array-length v9, v7

    const-wide/16 v5, 0x10

    invoke-virtual/range {v4 .. v9}, Lcom/yahoo/memory/WritableMemory;->putByteArray(J[BII)V

    return-object p1
.end method
