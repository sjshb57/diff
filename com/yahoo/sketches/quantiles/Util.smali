.class final Lcom/yahoo/sketches/quantiles/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yahoo/sketches/quantiles/Util$EpsilonFromK;
    }
.end annotation


# static fields
.field static final LS:Ljava/lang/String;

.field static final TAB:C = '\t'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkFamilyID(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "familyID"
        }
    .end annotation

    invoke-static {p0}, Lcom/yahoo/sketches/Family;->idToFamily(I)Lcom/yahoo/sketches/Family;

    move-result-object p0

    sget-object v0, Lcom/yahoo/sketches/Family;->QUANTILES:Lcom/yahoo/sketches/Family;

    invoke-virtual {p0, v0}, Lcom/yahoo/sketches/Family;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Possible corruption: Invalid Family: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yahoo/sketches/Family;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkHeapFlags(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flags"
        }
    .end annotation

    and-int/lit8 v0, p0, -0x1f

    if-gtz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Possible corruption: Invalid flags field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkIsCompactMemory(Lcom/yahoo/memory/Memory;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "srcMem"
        }
    .end annotation

    invoke-static {p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractFlags(Lcom/yahoo/memory/Memory;)I

    move-result p0

    and-int/lit8 p0, p0, 0xa

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static checkK(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "k"
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p0, v0, :cond_e

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    invoke-static {p0}, Lcom/yahoo/sketches/Util;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "K must be > 1 and < 65536 and Power of 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkPreLongsFlagsCap(IIJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "preambleLongs",
            "flags",
            "memCapBytes"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lcom/yahoo/sketches/Family;->QUANTILES:Lcom/yahoo/sketches/Family;

    invoke-virtual {v1}, Lcom/yahoo/sketches/Family;->getMinPreLongs()I

    move-result v1

    sget-object v2, Lcom/yahoo/sketches/Family;->QUANTILES:Lcom/yahoo/sketches/Family;

    invoke-virtual {v2}, Lcom/yahoo/sketches/Family;->getMaxPreLongs()I

    move-result v2

    if-ne p0, v1, :cond_17

    if-nez v0, :cond_1b

    :cond_17
    if-ne p0, v2, :cond_3a

    if-nez v0, :cond_3a

    :cond_1b
    invoke-static {p1}, Lcom/yahoo/sketches/quantiles/Util;->checkHeapFlags(I)V

    shl-int/lit8 p0, p0, 0x3

    int-to-long p0, p0

    cmp-long p0, p2, p0

    if-ltz p0, :cond_26

    return v0

    :cond_26
    new-instance p0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Possible corruption: Insufficient capacity for preamble: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    new-instance p1, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Possible corruption: PreambleLongs inconsistent with empty state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static computeBaseBufferItems(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "k",
            "n"
        }
    .end annotation

    const-wide/16 v0, 0x2

    int-to-long v2, p0

    mul-long/2addr v2, v0

    rem-long/2addr p1, v2

    long-to-int p0, p1

    return p0
.end method

.method static computeBitPattern(IJ)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "k",
            "n"
        }
    .end annotation

    const-wide/16 v0, 0x2

    int-to-long v2, p0

    mul-long/2addr v2, v0

    div-long/2addr p1, v2

    return-wide p1
.end method

.method static computeCombinedBufferItemCapacity(IJ)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "k",
            "n"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->computeNumLevelsNeeded(IJ)I

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0, p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->computeBaseBufferItems(IJ)I

    move-result p0

    const/4 p1, 0x4

    invoke-static {p0}, Lcom/yahoo/sketches/Util;->ceilingPowerOf2(I)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_14
    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p0

    return v0
.end method

.method static computeNumLevelsNeeded(IJ)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "k",
            "n"
        }
    .end annotation

    const-wide/16 v0, 0x2

    int-to-long v2, p0

    mul-long/2addr v2, v0

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->hiBitPos(J)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static computeRetainedItems(IJ)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "k",
            "n"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->computeBaseBufferItems(IJ)I

    move-result v0

    invoke-static {p0, p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->computeBitPattern(IJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/yahoo/sketches/quantiles/Util;->computeValidLevels(J)I

    move-result p1

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static computeTotalLevels(J)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitPattern"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/Util;->hiBitPos(J)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static computeValidLevels(J)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitPattern"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0
.end method

.method static hiBitPos(J)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "num"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method static lg(D)D
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method static lowestZeroBitStartingAt(JI)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bits",
            "startingBit"
        }
    .end annotation

    and-int/lit8 p2, p2, 0x3f

    ushr-long/2addr p0, p2

    :goto_3
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    ushr-long/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_11
    return p2
.end method

.method static final validateFractions([D)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fractions"
        }
    .end annotation

    if-eqz p0, :cond_26

    array-length v0, p0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p0, v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-ltz v0, :cond_1e

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v2, v0

    if-gtz v0, :cond_1e

    invoke-static {p0}, Lcom/yahoo/sketches/quantiles/Util;->validateValues([D)V

    return-void

    :cond_1e
    new-instance p0, Lcom/yahoo/sketches/SketchesArgumentException;

    const-string v0, "A fraction cannot be less than zero or greater than 1.0"

    invoke-direct {p0, v0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Lcom/yahoo/sketches/SketchesArgumentException;

    const-string v0, "Fractions cannot be null."

    invoke-direct {p0, v0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final validateValues([D)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    if-eqz p0, :cond_1c

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1b

    aget-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p0, v1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_13

    goto :goto_6

    :cond_13
    new-instance p0, Lcom/yahoo/sketches/SketchesArgumentException;

    const-string v0, "Values must be unique, monotonically increasing and not NaN."

    invoke-direct {p0, v0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    return-void

    :cond_1c
    new-instance p0, Lcom/yahoo/sketches/SketchesArgumentException;

    const-string v0, "Values cannot be null."

    invoke-direct {p0, v0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
