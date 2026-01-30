.class public abstract Lcom/yahoo/memory/Memory;
.super Ljava/lang/Object;
.source "Memory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toHex(Ljava/lang/String;JILcom/yahoo/memory/Memory;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "preamble",
            "offsetBytes",
            "lengthBytes",
            "mem"
        }
    .end annotation

    .line 334
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yahoo/memory/WritableMemoryImpl;->toHex(Ljava/lang/String;JILcom/yahoo/memory/Memory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/yahoo/memory/Memory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "byteBuf"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_b

    .line 31
    sget-object p0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-object p0

    .line 33
    :cond_b
    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    return-object v0
.end method

.method public static wrap([B)Lcom/yahoo/memory/Memory;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arr"
        }
    .end annotation

    .line 52
    array-length v0, p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/yahoo/memory/Memory;->wrap([BIILjava/nio/ByteOrder;)Lcom/yahoo/memory/Memory;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BIILjava/nio/ByteOrder;)Lcom/yahoo/memory/Memory;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "arr",
            "offset",
            "length",
            "byteOrder"
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/yahoo/memory/Util;->nullCheck(Ljava/lang/Object;)V

    .line 79
    invoke-static {p3}, Lcom/yahoo/memory/Util;->nullCheck(Ljava/lang/Object;)V

    int-to-long v0, p1

    int-to-long v2, p2

    .line 80
    array-length p1, p0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    if-nez p2, :cond_12

    .line 82
    sget-object p0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-object p0

    .line 84
    :cond_12
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 85
    new-instance p1, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-direct {p1, p0, p3}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    return-object p1
.end method

.method public static wrap([BLjava/nio/ByteOrder;)Lcom/yahoo/memory/Memory;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "arr",
            "byteOrder"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/yahoo/memory/Memory;->wrap([BIILjava/nio/ByteOrder;)Lcom/yahoo/memory/Memory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract checkBounds(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "length"
        }
    .end annotation
.end method

.method public abstract compareTo(JJLcom/yahoo/memory/Memory;JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "thisOffsetBytes",
            "thisLengthBytes",
            "that",
            "thatOffsetBytes",
            "thatLengthBytes"
        }
    .end annotation
.end method

.method public abstract copyTo(JLcom/yahoo/memory/WritableMemory;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcOffsetBytes",
            "destination",
            "dstOffsetBytes",
            "lengthBytes"
        }
    .end annotation
.end method

.method public abstract getBoolean(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getBooleanArray(J[ZII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getByte(J)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getByteArray(J[BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getCapacity()J
.end method

.method public abstract getChar(J)C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getCharArray(J[CII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getDouble(J)D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getDoubleArray(J[DII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getFloat(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getFloatArray(J[FII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getInt(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getIntArray(J[III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getLong(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getLongArray(J[JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract getResourceOrder()Ljava/nio/ByteOrder;
.end method

.method public abstract getShort(J)S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract getShortArray(J[SII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract hasArray()Z
.end method

.method public abstract hasByteBuffer()Z
.end method

.method public abstract isDirect()Z
.end method

.method public abstract isResourceReadOnly()Z
.end method

.method public abstract isSameResource(Lcom/yahoo/memory/Memory;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "that"
        }
    .end annotation
.end method

.method public abstract region(JJ)Lcom/yahoo/memory/Memory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "capacityBytes"
        }
    .end annotation
.end method

.method public abstract swapBytes()Z
.end method

.method public abstract toHexString(Ljava/lang/String;JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "offsetBytes",
            "lengthBytes"
        }
    .end annotation
.end method
