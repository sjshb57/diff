.class public Lcom/onevcat/uniwebview/UniWebViewProxyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewProxyActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\"\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0014¨\u0006\u0013"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewProxyActivity;",
        "Landroid/app/Activity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "intent",
        "onNewIntent",
        "<init>",
        "()V",
        "Companion",
        "a",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewProxyActivity$a;

.field public static final HANDLER_ID:Ljava/lang/String; = "com.uniwebview.UniWebViewProxyActivity.handlerId"


# instance fields
.field private handler:La/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity$a;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/UniWebViewProxyActivity$a;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->Companion:Lcom/onevcat/uniwebview/UniWebViewProxyActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:La/p;

    if-nez v0, :cond_d

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-interface {v0, p0, p1, p2, p3}, La/p;->a(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.uniwebview.UniWebViewProxyActivity.handlerId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, La/p;->a:La/p$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, La/p$a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/p;

    if-eqz p1, :cond_22

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:La/p;

    invoke-interface {p1, p0}, La/p;->a(Lcom/onevcat/uniwebview/UniWebViewProxyActivity;)V

    return-void

    :cond_22
    sget-object p1, La/i;->c:La/i$a;

    sget-object p1, La/i;->d:La/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "message"

    const-string v1, "Failed to pass activity handler for this proxy. Please check implementation."

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, La/i;->a(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null activity handler found!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:La/p;

    if-nez v0, :cond_d

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-interface {v0}, La/p;->a()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewProxyActivity;->handler:La/p;

    if-nez v0, :cond_d

    const-string v0, "handler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-interface {v0, p1}, La/p;->a(Landroid/content/Intent;)V

    return-void
.end method
