.class public final Lcom/yahoo/sketches/quantiles/ItemsUnion;
.super Ljava/lang/Object;
.source "ItemsUnion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final comparator_:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final maxK_:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxK",
            "comparator",
            "gadget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iput-object p2, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    iput-object p3, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    return-void
.end method

.method public static heapify(Lcom/yahoo/memory/Memory;Ljava/util/Comparator;Lcom/yahoo/sketches/ArrayOfItemsSerDe;)Lcom/yahoo/sketches/quantiles/ItemsUnion;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "srcMem",
            "comparator",
            "serDe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/memory/Memory;",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Lcom/yahoo/sketches/ArrayOfItemsSerDe<",
            "TT;>;)",
            "Lcom/yahoo/sketches/quantiles/ItemsUnion<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->heapify(Lcom/yahoo/memory/Memory;Ljava/util/Comparator;Lcom/yahoo/sketches/ArrayOfItemsSerDe;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p0

    new-instance p1, Lcom/yahoo/sketches/quantiles/ItemsUnion;

    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result p2

    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/yahoo/sketches/quantiles/ItemsUnion;-><init>(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    return-object p1
.end method

.method public static newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsUnion;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "maxK",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/yahoo/sketches/quantiles/ItemsUnion<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/yahoo/sketches/quantiles/ItemsUnion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/yahoo/sketches/quantiles/ItemsUnion;-><init>(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    return-object v0
.end method

.method public static newInstance(Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsUnion;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sketch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)",
            "Lcom/yahoo/sketches/quantiles/ItemsUnion<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/yahoo/sketches/quantiles/ItemsUnion;

    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v1

    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->copy(Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/yahoo/sketches/quantiles/ItemsUnion;-><init>(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsUnion;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lcom/yahoo/sketches/quantiles/ItemsUnion<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/yahoo/sketches/quantiles/ItemsUnion;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/yahoo/sketches/quantiles/ItemsUnion;-><init>(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    return-object v0
.end method

.method static updateLogic(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "myMaxK",
            "comparator",
            "myQS",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_10

    :cond_6
    invoke-virtual {p2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v0

    goto :goto_10

    :cond_e
    const/16 v2, 0x8

    :goto_10
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p3, :cond_16

    move v5, v1

    goto :goto_1f

    :cond_16
    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v4

    goto :goto_1f

    :cond_1e
    move v5, v3

    :goto_1f
    or-int/2addr v2, v5

    const/4 v5, 0x3

    packed-switch v2, :pswitch_data_a4

    :pswitch_24  #0x0, 0x3, 0x7
    move v2, v1

    goto :goto_2d

    :pswitch_26  #0x6, 0xa
    move v2, v5

    goto :goto_2d

    :pswitch_28  #0x4, 0x5, 0x8, 0x9
    move v2, v4

    goto :goto_2d

    :pswitch_2a  #0x2
    move v2, v3

    goto :goto_2d

    :pswitch_2c  #0x1
    move v2, v0

    :goto_2d
    const/4 v6, 0x0

    if-eqz v2, :cond_38

    if-eq v2, v4, :cond_a3

    if-eq v2, v3, :cond_77

    if-eq v2, v5, :cond_48

    if-eq v2, v0, :cond_3b

    :cond_38
    move-object p2, v6

    goto/16 :goto_a3

    :cond_3b
    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p2

    goto :goto_a3

    :cond_48
    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isEstimationMode()Z

    move-result p0

    if-nez p0, :cond_60

    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBaseBufferCount()I

    move-result p0

    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object p1

    :goto_56
    if-ge v1, p0, :cond_a3

    aget-object p3, p1, v1

    invoke-virtual {p2, p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->update(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_60
    invoke-virtual {p2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result p0

    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result p1

    if-gt p0, p1, :cond_6e

    invoke-static {p3, p2}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->mergeInto(Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    goto :goto_a3

    :cond_6e
    invoke-static {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->copy(Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/yahoo/sketches/quantiles/ItemsMergeImpl;->mergeInto(Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)V

    :goto_75
    move-object p2, p0

    goto :goto_a3

    :cond_77
    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isEstimationMode()Z

    move-result p2

    if-nez p2, :cond_93

    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p2

    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getBaseBufferCount()I

    move-result p0

    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getCombinedBuffer()[Ljava/lang/Object;

    move-result-object p1

    :goto_89
    if-ge v1, p0, :cond_a3

    aget-object p3, p1, v1

    invoke-virtual {p2, p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->update(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    :cond_93
    invoke-virtual {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result p1

    if-ge p0, p1, :cond_9e

    invoke-virtual {p3, p0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->downSample(I)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p0

    goto :goto_75

    :cond_9e
    invoke-static {p3}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->copy(Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p0

    goto :goto_75

    :cond_a3
    :goto_a3
    return-object p2

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_2c  #00000001
        :pswitch_2a  #00000002
        :pswitch_24  #00000003
        :pswitch_28  #00000004
        :pswitch_28  #00000005
        :pswitch_26  #00000006
        :pswitch_24  #00000007
        :pswitch_28  #00000008
        :pswitch_28  #00000009
        :pswitch_26  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public getEffectiveK()I
    .registers 2

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->getK()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    :goto_b
    return v0
.end method

.method public getMaxK()I
    .registers 2

    iget v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    return v0
.end method

.method public getResult()Lcom/yahoo/sketches/quantiles/ItemsSketch;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-nez v0, :cond_d

    iget v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iget-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->copy(Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object v0

    return-object v0
.end method

.method public getResultAndReset()Lcom/yahoo/sketches/quantiles/ItemsSketch;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iput-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    return-object v0
.end method

.method public isDirect()Z
    .registers 2

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    return-void
.end method

.method public toByteArray(Lcom/yahoo/sketches/ArrayOfItemsSerDe;)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serDe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yahoo/sketches/ArrayOfItemsSerDe<",
            "TT;>;)[B"
        }
    .end annotation

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-nez v0, :cond_11

    iget v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iget-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->toByteArray(Lcom/yahoo/sketches/ArrayOfItemsSerDe;)[B

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {v0, p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->toByteArray(Lcom/yahoo/sketches/ArrayOfItemsSerDe;)[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yahoo/sketches/quantiles/ItemsUnion;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZZ)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sketchSummary",
            "dataDetail"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yahoo/sketches/quantiles/ItemsUnion;->getMaxK()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%,d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "### Quantiles "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/Util;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   maxK                         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-nez v1, :cond_53

    iget p1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iget-object p2, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_53
    invoke-virtual {v1, p1, p2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->toString(ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/yahoo/memory/Memory;Lcom/yahoo/sketches/ArrayOfItemsSerDe;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "srcMem",
            "serDe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yahoo/memory/Memory;",
            "Lcom/yahoo/sketches/ArrayOfItemsSerDe<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    invoke-static {p1, v0, p2}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->heapify(Lcom/yahoo/memory/Memory;Ljava/util/Comparator;Lcom/yahoo/sketches/ArrayOfItemsSerDe;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p1

    iget p2, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    invoke-static {p2, v0, v1, p1}, Lcom/yahoo/sketches/quantiles/ItemsUnion;->updateLogic(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p1

    iput-object p1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    return-void
.end method

.method public update(Lcom/yahoo/sketches/quantiles/ItemsSketch;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sketchIn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yahoo/sketches/quantiles/ItemsSketch<",
            "TT;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iget-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    invoke-static {v0, v1, v2, p1}, Lcom/yahoo/sketches/quantiles/ItemsUnion;->updateLogic(ILjava/util/Comparator;Lcom/yahoo/sketches/quantiles/ItemsSketch;Lcom/yahoo/sketches/quantiles/ItemsSketch;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object p1

    iput-object p1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dataItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    if-nez v0, :cond_11

    iget v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->maxK_:I

    iget-object v1, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->comparator_:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->newInstance(ILjava/util/Comparator;)Lcom/yahoo/sketches/quantiles/ItemsSketch;

    move-result-object v0

    iput-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    :cond_11
    iget-object v0, p0, Lcom/yahoo/sketches/quantiles/ItemsUnion;->gadget_:Lcom/yahoo/sketches/quantiles/ItemsSketch;

    invoke-virtual {v0, p1}, Lcom/yahoo/sketches/quantiles/ItemsSketch;->update(Ljava/lang/Object;)V

    return-void
.end method
