.class public final Lcom/onevcat/uniwebview/i0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/onevcat/uniwebview/i0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/i0;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onevcat/uniwebview/i0;->a:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    new-instance v2, La/g0;

    const/4 v3, 0x0

    sget-object v3, Lcom/google/api/client/http/javanet/iQHD/aWJnqiuODg;->ZeTodwwGkjHleKm:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/i0;->b:Ljava/lang/String;

    new-instance v4, La/f;

    invoke-direct {v4}, La/f;-><init>()V

    invoke-direct {v2, v0, v3, v1, v4}, La/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;La/i0;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
