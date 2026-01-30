.class public final Lcom/google/flatbuffers/ByteVector;
.super Lcom/google/flatbuffers/BaseVector;
.source "ByteVector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/flatbuffers/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/ByteVector;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/flatbuffers/ByteVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/flatbuffers/ByteVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/ByteVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getAsUnsigned(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/ByteVector;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method
