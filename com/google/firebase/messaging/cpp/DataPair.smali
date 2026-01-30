.class public final Lcom/google/firebase/messaging/cpp/DataPair;
.super Lcom/google/flatbuffers/Table;
.source "DataPair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/cpp/DataPair$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .registers 0

    invoke-static {}, Lcom/google/flatbuffers/Constants;->FLATBUFFERS_1_12_0()V

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/DataPair;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createDataPair(Lcom/google/flatbuffers/FlatBufferBuilder;II)I
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    invoke-static {p0, p2}, Lcom/google/firebase/messaging/cpp/DataPair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/DataPair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/DataPair;->endDataPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endDataPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static getRootAsDataPair(Ljava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/DataPair;
    .registers 2

    new-instance v0, Lcom/google/firebase/messaging/cpp/DataPair;

    invoke-direct {v0}, Lcom/google/firebase/messaging/cpp/DataPair;-><init>()V

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/cpp/DataPair;->getRootAsDataPair(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/DataPair;)Lcom/google/firebase/messaging/cpp/DataPair;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsDataPair(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/DataPair;)Lcom/google/firebase/messaging/cpp/DataPair;
    .registers 4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/messaging/cpp/DataPair;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/DataPair;

    move-result-object p0

    return-object p0
.end method

.method public static startDataPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/DataPair;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/DataPair;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/DataPair;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public key()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/DataPair;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/google/firebase/messaging/cpp/DataPair;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/DataPair;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public keyAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/DataPair;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public keyInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/DataPair;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public value()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/DataPair;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/google/firebase/messaging/cpp/DataPair;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/DataPair;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public valueAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/DataPair;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public valueInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/DataPair;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
