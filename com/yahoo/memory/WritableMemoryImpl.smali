.class Lcom/yahoo/memory/WritableMemoryImpl;
.super Lcom/yahoo/memory/WritableMemory;
.source "WritableMemoryImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;


# instance fields
.field private final byteBuf:Ljava/nio/ByteBuffer;

.field private final capacity:I

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V

    sput-object v0, Lcom/yahoo/memory/WritableMemoryImpl;->ZERO_SIZE_MEMORY:Lcom/yahoo/memory/WritableMemoryImpl;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;IILjava/nio/ByteOrder;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "bb",
            "offsetBytes",
            "capacityBytes",
            "byteOrder"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yahoo/memory/WritableMemory;-><init>()V

    iput-object p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    iput p2, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bb",
            "byteOrder"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yahoo/memory/WritableMemory;-><init>()V

    iput-object p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static toHex(Ljava/lang/String;JILcom/yahoo/memory/Memory;)Ljava/lang/String;
    .registers 19
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

    move/from16 v0, p3

    move-object/from16 v1, p4

    int-to-long v8, v0

    invoke-virtual/range {p4 .. p4}, Lcom/yahoo/memory/Memory;->getCapacity()J

    move-result-wide v6

    move-wide v2, p1

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    move-object v0, v1

    check-cast v0, Lcom/yahoo/memory/WritableMemoryImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    const-string v4, "null"

    const-wide v5, 0xffffffffL

    const-string v7, ", "

    if-nez v3, :cond_25

    move-object v3, v4

    goto :goto_49

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_49
    invoke-virtual {v0}, Lcom/yahoo/memory/WritableMemoryImpl;->getMemoryRequestServer()Lcom/yahoo/memory/MemoryRequestServer;

    move-result-object v10

    if-nez v10, :cond_50

    goto :goto_70

    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v7

    int-to-long v10, v7

    and-long/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_70
    move-object v5, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ByteBuf, hashCode   : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RegionOffset        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/yahoo/memory/WritableMemoryImpl;->getRegionOffset(J)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Capacity            : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/yahoo/memory/Memory;->getCapacity()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MemReq, hashCode    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Resource Read Only  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/yahoo/memory/Memory;->isResourceReadOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Resource Endianness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Data, littleEndian  :  0  1  2  3  4  5  6  7"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, v5

    :goto_e6
    cmp-long v0, v3, v8

    if-gez v0, :cond_122

    add-long v10, p1, v3

    invoke-virtual {v1, v10, v11}, Lcom/yahoo/memory/Memory;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v12, 0x8

    rem-long v12, v3, v12

    cmp-long v7, v12, v5

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v7, :cond_10d

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v7, v10, v12

    const-string v7, "%n%20s: "

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v0, v7, v12

    const-string v0, "%02x "

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    goto :goto_e6

    :cond_122
    sget-object v0, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkBounds(JJ)V
    .registers 12
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

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    return-void
.end method

.method public clear()V
    .registers 8

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v4, v0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/yahoo/memory/WritableMemoryImpl;->fill(JJB)V

    return-void
.end method

.method public clear(JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "lengthBytes"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yahoo/memory/WritableMemoryImpl;->fill(JJB)V

    return-void
.end method

.method public clearBits(JB)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "bitMask"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    not-int p3, p3

    and-int/2addr p1, p3

    iget-object p3, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p3, p2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public compareTo(JJLcom/yahoo/memory/Memory;JJ)I
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "thisOffsetBytes",
            "thisLengthBytes",
            "that",
            "thatOffsetBytes",
            "thatLengthBytes"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v7, p3

    iget v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    invoke-virtual/range {p5 .. p5}, Lcom/yahoo/memory/Memory;->getCapacity()J

    move-result-wide v13

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    cmp-long v1, v7, p8

    const/4 v2, -0x1

    if-gez v1, :cond_1e

    return v2

    :cond_1e
    const/4 v3, 0x1

    if-lez v1, :cond_22

    return v3

    :cond_22
    invoke-virtual/range {p0 .. p2}, Lcom/yahoo/memory/WritableMemoryImpl;->getRegionOffset(J)J

    move-result-wide v4

    long-to-int v1, v4

    move-object/from16 v4, p5

    check-cast v4, Lcom/yahoo/memory/WritableMemoryImpl;

    move-wide/from16 v5, p6

    invoke-virtual {v4, v5, v6}, Lcom/yahoo/memory/WritableMemoryImpl;->getRegionOffset(J)J

    move-result-wide v5

    long-to-int v5, v5

    long-to-int v6, v7

    add-int/2addr v6, v1

    :goto_34
    if-ge v1, v6, :cond_4d

    iget-object v7, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    iget-object v8, v4, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-ge v7, v8, :cond_45

    return v2

    :cond_45
    if-le v7, v8, :cond_48

    return v3

    :cond_48
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_4d
    const/4 v1, 0x0

    return v1
.end method

.method public copyTo(JLcom/yahoo/memory/WritableMemory;JJ)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "srcOffsetBytes",
            "destination",
            "dstOffsetBytes",
            "lengthBytes"
        }
    .end annotation

    move-object v6, p0

    iget v0, v6, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v11, v0

    move-wide v7, p1

    move-wide/from16 v9, p6

    invoke-static/range {v7 .. v12}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    invoke-virtual/range {p3 .. p3}, Lcom/yahoo/memory/WritableMemory;->getCapacity()J

    move-result-wide v4

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    invoke-static/range {v0 .. v5}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    move-object/from16 v7, p3

    invoke-virtual {p0, v7}, Lcom/yahoo/memory/WritableMemoryImpl;->isSameResource(Lcom/yahoo/memory/Memory;)Z

    move-result v0

    if-eqz v0, :cond_22

    cmp-long v0, p1, p4

    if-nez v0, :cond_22

    return-void

    :cond_22
    move-wide/from16 v0, p6

    long-to-int v12, v0

    new-array v10, v12, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v10

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/yahoo/memory/WritableMemoryImpl;->getByteArray(J[BII)V

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v7 .. v12}, Lcom/yahoo/memory/WritableMemory;->putByteArray(J[BII)V

    return-void
.end method

.method public fill(B)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v4, v0

    const-wide/16 v2, 0x0

    move-object v1, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/yahoo/memory/WritableMemoryImpl;->fill(JJB)V

    return-void
.end method

.method public fill(JJB)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "lengthBytes",
            "value"
        }
    .end annotation

    long-to-int p1, p1

    int-to-long v0, p1

    long-to-int p2, p3

    int-to-long v2, p2

    iget p3, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget p3, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    add-int/2addr p3, p1

    add-int/2addr p2, p3

    :goto_e
    if-ge p3, p2, :cond_18

    iget-object p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3, p5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public getArray()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(J)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public getBooleanArray(J[ZII)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthBooleans"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    int-to-long v6, v3

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v8, v4

    move-wide/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v10, v2

    int-to-long v12, v3

    array-length v4, v1

    int-to-long v14, v4

    invoke-static/range {v10 .. v15}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    int-to-long v4, v4

    add-long v4, v4, p1

    long-to-int v4, v4

    move v5, v2

    :goto_1f
    add-int v6, v2, v3

    if-ge v5, v6, :cond_35

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    aput-boolean v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_35
    return-void
.end method

.method public getByte(J)B
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getByteArray(J[BII)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthBytes"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    int-to-long v3, v11

    iget v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v1

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v12, v10

    int-to-long v14, v11

    array-length v1, v9

    int-to-long v1, v1

    move-wide/from16 v16, v1

    invoke-static/range {v12 .. v17}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget-object v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v3, v7

    add-int/2addr v2, v3

    invoke-static {v1, v2, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_49

    :cond_32
    iget v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    int-to-long v1, v1

    add-long/2addr v1, v7

    long-to-int v1, v1

    move v2, v10

    :goto_38
    add-int v3, v10, v11

    if-ge v2, v3, :cond_49

    iget-object v3, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_49
    :goto_49
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getCapacity()J
    .registers 3

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChar(J)C
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x2

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    return p1
.end method

.method public getCharArray(J[CII)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthChars"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x1

    int-to-long v7, v4

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v11, v2

    int-to-long v13, v3

    array-length v4, v1

    int-to-long v4, v4

    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    move-wide/from16 v5, p1

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_22
    add-int v6, v2, v3

    if-ge v5, v6, :cond_33

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v6

    aput-char v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_22

    :cond_33
    return-void
.end method

.method public getDouble(J)D
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleArray(J[DII)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthDoubles"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x3

    int-to-long v7, v4

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v11, v2

    int-to-long v13, v3

    array-length v4, v1

    int-to-long v4, v4

    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    move-wide/from16 v5, p1

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_22
    add-int v6, v2, v3

    if-ge v5, v6, :cond_33

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_22

    :cond_33
    return-void
.end method

.method public getFloat(J)F
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x4

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getFloatArray(J[FII)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthFloats"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x2

    int-to-long v7, v4

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v11, v2

    int-to-long v13, v3

    array-length v4, v1

    int-to-long v4, v4

    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    move-wide/from16 v5, p1

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_22
    add-int v6, v2, v3

    if-ge v5, v6, :cond_33

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_22

    :cond_33
    return-void
.end method

.method public getInt(J)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x4

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getIntArray(J[III)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthInts"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x2

    int-to-long v7, v4

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v11, v2

    int-to-long v13, v3

    array-length v4, v1

    int-to-long v4, v4

    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    move-wide/from16 v5, p1

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_22
    add-int v6, v2, v3

    if-ge v5, v6, :cond_33

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_22

    :cond_33
    return-void
.end method

.method public getLong(J)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongArray(J[JII)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthLongs"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x3

    int-to-long v7, v4

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v11, v2

    int-to-long v13, v3

    array-length v4, v1

    int-to-long v4, v4

    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    move-wide/from16 v5, p1

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_22
    add-int v6, v2, v3

    if-ge v5, v6, :cond_33

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_22

    :cond_33
    return-void
.end method

.method public getMemoryRequestServer()Lcom/yahoo/memory/MemoryRequestServer;
    .registers 2

    invoke-static {}, Lcom/yahoo/memory/DefaultMemoryManager;->getInstance()Lcom/yahoo/memory/DefaultMemoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getRegionOffset(J)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getResourceOrder()Ljava/nio/ByteOrder;
    .registers 2

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getShort(J)S
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offsetBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x2

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getShortArray(J[SII)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "dstArray",
            "dstOffset",
            "lengthShorts"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x1

    int-to-long v7, v4

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v11, v2

    int-to-long v13, v3

    array-length v4, v1

    int-to-long v4, v4

    move-wide v15, v4

    invoke-static/range {v11 .. v16}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    move-wide/from16 v5, p1

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_22
    add-int v6, v2, v3

    if-ge v5, v6, :cond_33

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    aput-short v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_22

    :cond_33
    return-void
.end method

.method public hasArray()Z
    .registers 2

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasByteBuffer()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .registers 2

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isResourceReadOnly()Z
    .registers 2

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isSameResource(Lcom/yahoo/memory/Memory;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "that"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/yahoo/memory/WritableMemoryImpl;->isDirect()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {p1}, Lcom/yahoo/memory/Memory;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3e

    :cond_10
    move-object v1, p1

    check-cast v1, Lcom/yahoo/memory/WritableMemoryImpl;

    invoke-virtual {p0}, Lcom/yahoo/memory/WritableMemoryImpl;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p1}, Lcom/yahoo/memory/Memory;->hasArray()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget-object v2, v1, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    if-eq p1, v2, :cond_31

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object v2, v1, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    if-ne p1, v2, :cond_3e

    :cond_31
    iget p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    iget v2, v1, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    if-ne p1, v2, :cond_3e

    iget p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    iget v1, v1, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    if-ne p1, v1, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    :goto_3e
    return v0
.end method

.method public putBoolean(JZ)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    int-to-byte p1, p3

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putBooleanArray(J[ZII)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    int-to-long v2, p5

    int-to-long v4, p4

    int-to-long v6, p5

    array-length v0, p3

    int-to-long v8, v0

    invoke-static/range {v4 .. v9}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v4, v0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    move p1, p4

    :goto_14
    add-int p2, p4, p5

    if-ge p1, p2, :cond_25

    iget-object p2, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget-boolean v1, p3, p1

    int-to-byte v1, v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_25
    return-void
.end method

.method public putByte(JB)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByteArray(J[BII)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-wide v7, p1

    move-object v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    int-to-long v1, v10

    int-to-long v3, v11

    array-length v5, v9

    int-to-long v5, v5

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    int-to-long v3, v11

    iget v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget-object v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v3, v7

    add-int/2addr v2, v3

    invoke-static {p3, v10, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_41

    :cond_2c
    iget v1, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v2, v7

    add-int/2addr v1, v2

    move v2, v10

    :goto_31
    add-int v3, v10, v11

    if-ge v2, v3, :cond_41

    iget-object v3, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget-byte v4, v9, v2

    invoke-virtual {v3, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_41
    :goto_41
    return-void
.end method

.method public putChar(JC)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x2

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putCharArray(J[CII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x1

    int-to-long v7, v4

    int-to-long v9, v2

    int-to-long v11, v3

    array-length v4, v1

    int-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_1e
    add-int v6, v2, v3

    if-ge v5, v6, :cond_2e

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget-char v7, v1, v5

    invoke-virtual {v6, v4, v7}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public putDouble(JD)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putDoubleArray(J[DII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x3

    int-to-long v7, v4

    int-to-long v9, v2

    int-to-long v11, v3

    array-length v4, v1

    int-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_1e
    add-int v6, v2, v3

    if-ge v5, v6, :cond_2e

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget-wide v7, v1, v5

    invoke-virtual {v6, v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public putFloat(JF)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x4

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putFloatArray(J[FII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x2

    int-to-long v7, v4

    int-to-long v9, v2

    int-to-long v11, v3

    array-length v4, v1

    int-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_1e
    add-int v6, v2, v3

    if-ge v5, v6, :cond_2e

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget v7, v1, v5

    invoke-virtual {v6, v4, v7}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public putInt(JI)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x4

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putIntArray(J[III)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x2

    int-to-long v7, v4

    int-to-long v9, v2

    int-to-long v11, v3

    array-length v4, v1

    int-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_1e
    add-int v6, v2, v3

    if-ge v5, v6, :cond_2e

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget v7, v1, v5

    invoke-virtual {v6, v4, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public putLong(JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x8

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putLongArray(J[JII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x3

    int-to-long v7, v4

    int-to-long v9, v2

    int-to-long v11, v3

    array-length v4, v1

    int-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v5, v2

    :goto_1e
    add-int v6, v2, v3

    if-ge v5, v6, :cond_2e

    iget-object v6, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget-wide v7, v1, v5

    invoke-virtual {v6, v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x8

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method public putShort(JS)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x2

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShortArray(J[SII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
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

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shl-int/lit8 v4, v3, 0x1

    int-to-long v7, v4

    int-to-long v9, v2

    int-to-long v11, v3

    array-length v4, v1

    int-to-long v13, v4

    invoke-static/range {v9 .. v14}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    iget v4, v0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v9, v4

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    move v4, v2

    :goto_1a
    add-int v5, v2, v3

    if-ge v4, v5, :cond_28

    iget-object v5, v0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    aget-short v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_28
    return-void
.end method

.method public region(JJ)Lcom/yahoo/memory/Memory;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "capacityBytes"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yahoo/memory/WritableMemoryImpl;->writableRegion(JJ)Lcom/yahoo/memory/WritableMemory;

    move-result-object p1

    return-object p1
.end method

.method public setBits(JB)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "bitMask"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    const-wide/16 v3, 0x1

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->assertBounds(JJJ)V

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    iget-object p2, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    or-int/2addr p1, p3

    int-to-byte p1, p1

    invoke-virtual {p2, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setMemoryRequest(Lcom/yahoo/memory/MemoryRequestServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "memReqSvr"
        }
    .end annotation

    return-void
.end method

.method public swapBytes()Z
    .registers 3

    iget-object v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public toHexString(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "header",
            "offsetBytes",
            "lengthBytes"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "(..., %d, %d)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".toHexString"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "### "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SUMMARY ###"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Header Comment      : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/yahoo/memory/Util;->LS:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Call Params         : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p0}, Lcom/yahoo/memory/WritableMemoryImpl;->toHex(Ljava/lang/String;JILcom/yahoo/memory/Memory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writableDuplicate()Lcom/yahoo/memory/WritableMemory;
    .registers 5

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/yahoo/memory/WritableMemoryImpl;->writableRegion(JJ)Lcom/yahoo/memory/WritableMemory;

    move-result-object v0

    return-object v0
.end method

.method public writableRegion(JJ)Lcom/yahoo/memory/WritableMemory;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "offsetBytes",
            "capacityBytes"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/memory/WritableMemoryImpl;->capacity:I

    int-to-long v5, v0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v1 .. v6}, Lcom/yahoo/memory/Util;->checkBounds(JJJ)V

    new-instance v0, Lcom/yahoo/memory/WritableMemoryImpl;

    iget-object v1, p0, Lcom/yahoo/memory/WritableMemoryImpl;->byteBuf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/yahoo/memory/WritableMemoryImpl;->offset:I

    long-to-int p1, p1

    add-int/2addr v2, p1

    long-to-int p1, p3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/yahoo/memory/WritableMemoryImpl;-><init>(Ljava/nio/ByteBuffer;IILjava/nio/ByteOrder;)V

    return-object v0
.end method
