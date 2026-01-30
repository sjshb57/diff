.class public final synthetic Lkotlin/UByte$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(D)I
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static synthetic m(II)I
    .registers 6

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic m(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static synthetic m(JJ)I
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 p0, 0x4d5

    :goto_7
    return p0
.end method

.method public static synthetic m(JJ)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/high16 v3, -0x8000000000000000L

    if-gez v2, :cond_13

    xor-long v0, p0, v3

    xor-long v2, p2, v3

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    return-wide p0

    :cond_11
    sub-long/2addr p0, p2

    return-wide p0

    :cond_13
    cmp-long v2, p0, v0

    if-ltz v2, :cond_19

    rem-long/2addr p0, p2

    return-wide p0

    :cond_19
    const/4 v2, 0x1

    ushr-long v5, p0, v2

    div-long/2addr v5, p2

    shl-long/2addr v5, v2

    mul-long/2addr v5, p2

    sub-long/2addr p0, v5

    xor-long v5, p0, v3

    xor-long v2, p2, v3

    cmp-long v2, v5, v2

    if-ltz v2, :cond_29

    goto :goto_2a

    :cond_29
    move-wide p2, v0

    :goto_2a
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static synthetic m(Ljava/lang/Object;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static synthetic m$1(II)I
    .registers 6

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    rem-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic m$1(JJ)J
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide/high16 v3, -0x8000000000000000L

    if-gez v2, :cond_12

    xor-long/2addr p0, v3

    xor-long/2addr p2, v3

    cmp-long p0, p0, p2

    if-gez p0, :cond_f

    return-wide v0

    :cond_f
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_12
    cmp-long v0, p0, v0

    if-ltz v0, :cond_18

    div-long/2addr p0, p2

    return-wide p0

    :cond_18
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    mul-long v5, v1, p2

    sub-long/2addr p0, v5

    xor-long/2addr p0, v3

    xor-long/2addr p2, v3

    cmp-long p0, p0, p2

    if-ltz p0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    int-to-long p0, v0

    add-long/2addr v1, p0

    return-wide v1
.end method

.method public static synthetic m$2(II)I
    .registers 3

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
