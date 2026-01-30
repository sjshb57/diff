.class public abstract Lcom/yahoo/memory/WritableMemory;
.super Lcom/yahoo/memory/Memory;
.source "WritableMemory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/yahoo/memory/Memory;-><init>()V

    return-void
.end method

.method public static allocate(I)Lcom/yahoo/memory/WritableMemory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "capacityBytes"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object p0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-object p0

    :cond_5
    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    return-object v0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/yahoo/memory/WritableMemory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "byteBuf"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-object p0

    :cond_f
    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    return-object v0

    :cond_19
    new-instance p0, Lcom/yahoo/memory/ReadOnlyException;

    const-string v0, "ByteBuffer is read-only."

    invoke-direct {p0, v0}, Lcom/yahoo/memory/ReadOnlyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrap([B)Lcom/yahoo/memory/WritableMemory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arr"
        }
    .end annotation

    invoke-static {p0}, Lcom/yahoo/memory/Util;->nullCheck(Ljava/lang/Object;)V

    array-length v0, p0

    if-nez v0, :cond_9

    sget-object p0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-object p0

    :cond_9
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    return-object v0
.end method

.method public static wrap([BLjava/nio/ByteOrder;)Lcom/yahoo/memory/WritableMemory;
    .registers 3
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

    invoke-static {p0}, Lcom/yahoo/memory/Util;->nullCheck(Ljava/lang/Object;)V

    array-length v0, p0

    if-nez v0, :cond_9

    sget-object p0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-object p0

    :cond_9
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    return-object v0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clear(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "lengthBytes"
        }
    .end annotation
.end method

.method public abstract clearBits(JB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "bitMask"
        }
    .end annotation
.end method

.method public abstract fill(B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract fill(JJB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "lengthBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract getArray()Ljava/lang/Object;
.end method

.method public abstract getByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getMemoryRequestServer()Lcom/yahoo/memory/MemoryRequestServer;
.end method

.method public abstract getRegionOffset(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetBytes"
        }
    .end annotation
.end method

.method public abstract putBoolean(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putBooleanArray(J[ZII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putByte(JB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putByteArray(J[BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putChar(JC)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putCharArray(J[CII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putDouble(JD)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putDoubleArray(J[DII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putFloat(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putFloatArray(J[FII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putInt(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putIntArray(J[III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putLong(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putLongArray(J[JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract putShort(JS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation
.end method

.method public abstract putShortArray(J[SII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "srcArray",
            "srcOffset",
            "length"
        }
    .end annotation
.end method

.method public abstract setBits(JB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetBytes",
            "bitMask"
        }
    .end annotation
.end method

.method public abstract setMemoryRequest(Lcom/yahoo/memory/MemoryRequestServer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memReqSvr"
        }
    .end annotation
.end method

.method public abstract writableDuplicate()Lcom/yahoo/memory/WritableMemory;
.end method

.method public abstract writableRegion(JJ)Lcom/yahoo/memory/WritableMemory;
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
