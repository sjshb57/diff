.class public final Lcom/onevcat/uniwebview/UniWebViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewInterface$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewInterface;",
        "",
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
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

.field public static final RUN_SYNC_WAIT_TIME_MS:J = 0x1388L


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jsString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "identifier"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface addJavaScript to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/a;

    invoke-direct {v1, p1, p2}, Lcom/onevcat/uniwebview/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final addPermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "domain"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface addPermissionTrustDomain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/b;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final addSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "domain"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface addSslExceptionDomain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/c;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final addUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "scheme"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface addUrlScheme: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/d;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final animateTo(Ljava/lang/String;IIIIFFLjava/lang/String;)Z
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v2, "name"

    const-string v3, "identifier"

    move-object/from16 v11, p7

    invoke-static {v1, p0, v2, v11, v3}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, La/i;->c:La/i$a;

    sget-object v2, La/i;->d:La/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interface animateTo: {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, La/i;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/onevcat/uniwebview/e;

    move-object v4, v2

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Lcom/onevcat/uniwebview/e;-><init>(IIIIFFLjava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    return v0
.end method

.method public static final authenticationInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheme"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface authenticationInit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/onevcat/uniwebview/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final authenticationSetPrivateMode(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface authenticationSetPrivateMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/g;

    invoke-direct {v1, p0, p1}, Lcom/onevcat/uniwebview/g;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final authenticationStart(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface authenticationStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/h;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final canGoBack(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface canGoBack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/i;->a:Lcom/onevcat/uniwebview/i;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public static final canGoForward(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface canGoForward: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/j;->a:Lcom/onevcat/uniwebview/j;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public static final captureSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface captureSnapshot: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". File name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/k;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final cleanCache(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface cleanCache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/l;->a:Lcom/onevcat/uniwebview/l;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final clearCookies()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, La/i;->c:La/i$a;

    sget-object v0, La/i;->d:La/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "message"

    const-string v2, "Interface clearCookies"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, La/i;->a(ILjava/lang/String;)V

    sget-object v0, La/w;->a:La/w$a;

    invoke-virtual {v0}, La/w$a;->a()V

    return-void
.end method

.method public static final clearHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "host"

    const-string v2, "realm"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface clearHttpAuthUsernamePassword. Host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/m;

    invoke-direct {v1, p0, p1}, Lcom/onevcat/uniwebview/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final destroy(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface destroy web view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/n;->a:Lcom/onevcat/uniwebview/n;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final evaluateJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jsString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "identifier"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface evaluateJavaScript in: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/o;

    invoke-direct {v1, p1, p2}, Lcom/onevcat/uniwebview/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "url"

    const-string v2, "key"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, La/i;->c:La/i$a;

    sget-object v0, La/i;->d:La/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interface getCookie from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, La/i;->c(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_50

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "The content for given url \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not found in cookie manager."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, La/i;->b(Ljava/lang/String;)V

    goto/16 :goto_ff

    :cond_50
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cookie string is found: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, La/i;->d(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Trying to parse cookie to find value for key: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, La/i;->d(Ljava/lang/String;)V

    new-instance p0, Lkotlin/text/Regex;

    const-string v0, ";"

    invoke-direct {p0, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "="

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8e

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    const/4 p0, 0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    sget-object p0, La/i;->c:La/i$a;

    sget-object p0, La/i;->d:La/i;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found cookie value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/i;->d(Ljava/lang/String;)V

    goto :goto_ff

    :cond_e5
    sget-object p0, La/i;->c:La/i$a;

    sget-object p0, La/i;->d:La/i;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Did not find the key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in cookie."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/i;->d(Ljava/lang/String;)V

    :goto_ff
    return-object v2
.end method

.method public static final getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface getUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/p;->a:Lcom/onevcat/uniwebview/p;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2c

    const-string p0, ""

    :cond_2c
    return-object p0
.end method

.method public static final getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface getUserAgent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/q;->a:Lcom/onevcat/uniwebview/q;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2b

    const-string p0, ""

    :cond_2b
    return-object p0
.end method

.method public static final getWebViewAlpha(Ljava/lang/String;)F
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface getWebViewAlpha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/s;->a:Lcom/onevcat/uniwebview/s;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_30

    :cond_2e
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_30
    return p0
.end method

.method public static final goBack(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface goBack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/t;->a:Lcom/onevcat/uniwebview/t;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final goForward(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface goForward: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/u;->a:Lcom/onevcat/uniwebview/u;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final hide(Ljava/lang/String;ZIFLjava/lang/String;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "identifier"

    invoke-static {v0, p0, v1, p4, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Interface hide"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, La/i;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/v;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/v;-><init>(ZIFLjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method public static final hideAsync(Ljava/lang/String;ZIFLjava/lang/String;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "identifier"

    invoke-static {v0, p0, v1, p4, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Interface hideAsync"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, La/i;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/w;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/w;-><init>(ZIFLjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final init(Ljava/lang/String;IIII)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface init: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/x;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/onevcat/uniwebview/x;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final isAuthenticationIsSupported()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a()Z

    move-result v0

    return v0
.end method

.method public static final isSafeBrowsingSupported()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/onevcat/uniwebview/y;->a:Lcom/onevcat/uniwebview/y;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static final isWebViewSupported()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/onevcat/uniwebview/z;->a:Lcom/onevcat/uniwebview/z;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static final load(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/a0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/a0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final loadHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Interface loadHTMLString"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, La/i;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/b0;

    invoke-direct {v1, p1, p2}, Lcom/onevcat/uniwebview/b0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final prepare()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/onevcat/uniwebview/c0;->a:Lcom/onevcat/uniwebview/c0;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public static final print(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface print: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/d0;->a:Lcom/onevcat/uniwebview/d0;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final reload(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface reload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/e0;->a:Lcom/onevcat/uniwebview/e0;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final removeCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const/4 v1, 0x0

    sget-object v1, Lcom/saucesdk/android/HGf/BqwBVtsr;->qqm:Ljava/lang/String;

    const-string v2, "key"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, La/i;->c:La/i$a;

    sget-object v0, La/i;->d:La/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interface removeCookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->c(Ljava/lang/String;)V

    sget-object v0, La/w;->a:La/w$a;

    invoke-virtual {v0, p0, p1}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final removeCookies(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface remove cookies for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, La/w;->a:La/w$a;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, La/w$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final removePermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "domain"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface removePermissionTrustDomain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/f0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/f0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final removeSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "domain"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface removeSslExceptionDomain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/g0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/g0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final removeUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "scheme"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface removeUrlScheme: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/h0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/h0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final safeBrowsingInit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface safeBrowsingInit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/i0;

    invoke-direct {v1, p1, p0}, Lcom/onevcat/uniwebview/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final safeBrowsingSetToolbarColor(Ljava/lang/String;FFF)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface safeBrowsingSetToolbarColor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rgb: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/j0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/j0;-><init>(Ljava/lang/String;FFF)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final safeBrowsingShow(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface safeBrowsingShow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/k0;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/k0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final screenHeight()F
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static final screenWidth()F
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static final scrollTo(Ljava/lang/String;IIZ)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface scrollTo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, animated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/l0;

    invoke-direct {v1, p1, p2, p3}, Lcom/onevcat/uniwebview/l0;-><init>(IIZ)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setAcceptThirdPartyCookies(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAcceptThirdPartyCookies: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/m0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/m0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setAllowAutoPlay(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAllowAutoPlay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/n0;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/n0;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setAllowFileAccess(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAllowFileAccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/o0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/o0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setAllowFileAccessFromFileURLs(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAllowFileAccessFromFileURLs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/p0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/p0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setAllowHTTPAuthPopUpWindow(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAllowHTTPAuthPopUpWindow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/q0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/q0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setAllowJavaScriptOpenWindow(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAllowJavaScriptOpenWindow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/r0;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/r0;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setAllowUniversalAccessFromFileURLs(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setAllowUniversalAccessFromFileURLs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/s0;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/s0;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setBackgroundColor(Ljava/lang/String;FFFF)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setBackgroundColor rgba: {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/t0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/t0;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setBouncesEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setBouncesEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/u0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/u0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setCalloutEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setCalloutEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/v0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/v0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "url"

    const-string v2, "cookie"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, La/i;->c:La/i$a;

    sget-object v0, La/i;->d:La/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interface setCookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | to url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->c(Ljava/lang/String;)V

    sget-object v0, La/w;->a:La/w$a;

    invoke-virtual {v0, p0, p1}, La/w$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setDefaultFontSize(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setDefaultFontSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/w0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/w0;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setDownloadEventForContextMenuEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface SetDownloadEventForContextMenuEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/x0;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/x0;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarBackgroundColor(Ljava/lang/String;FFFF)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarBackgroundColor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rgba: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/y0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/y0;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarButtonTextColor(Ljava/lang/String;FFFF)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarButtonTextColor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rgba: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/z0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/z0;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarDoneButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "text"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarDoneButtonText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/a1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/a1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarGoBackButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "text"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarGoBackButtonText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/b1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/b1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarGoForwardButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "text"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarGoForwardButtonText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/c1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/c1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarNavigationButtonsShow(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarNavigationButtonsShow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/d1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/d1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarOnTop(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarOnTop: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", top: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/e1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/e1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarTitleText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "text"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarTitleText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/f1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/f1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEmbeddedToolbarTitleTextColor(Ljava/lang/String;FFFF)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEmbeddedToolbarTitleTextColor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rgba: {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/g1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/g1;-><init>(FFFF)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setEnableKeyboardAvoidance(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setEnableKeyboardAvoidance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/h1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/h1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setFrame(Ljava/lang/String;IIII)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setFrame: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/i1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/i1;-><init>(IIII)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "key"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setHeaderField: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". {key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/j1;

    invoke-direct {v1, p1, p2}, Lcom/onevcat/uniwebview/j1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setHorizontalScrollBarEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setHorizontalScrollBarEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/k1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/k1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setJavaScriptEnabled(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setJavaScriptEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/l1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/l1;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setLoadWithOverviewMode(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setLoadWithOverviewMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/m1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/m1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setLogLevel(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, La/i;->c:La/i$a;

    sget-object v0, La/i;->d:La/i;

    iput p0, v0, La/i;->b:I

    return-void
.end method

.method public static final setOpenLinksInExternalBrowser(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setOpenLinksInExternalBrowser: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/n1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/n1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setPosition(Ljava/lang/String;II)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setPosition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/o1;

    invoke-direct {v1, p1, p2}, Lcom/onevcat/uniwebview/o1;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setShowEmbeddedToolbar(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setShowEmbeddedToolbar: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/p1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/p1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setShowSpinnerWhileLoading(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setShowSpinnerWhileLoading: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/q1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/q1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setSize(Ljava/lang/String;II)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/r1;

    invoke-direct {v1, p1, p2}, Lcom/onevcat/uniwebview/r1;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setSpinnerText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "text"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setSpinnerText: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/s1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/s1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setSupportMultipleWindows(Ljava/lang/String;ZZ)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setSupportMultipleWindows: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", allowJS: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, La/i;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/onevcat/uniwebview/t1;

    invoke-direct {p1, p2}, Lcom/onevcat/uniwebview/t1;-><init>(Z)V

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setTextZoom(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setTextZoom: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", textZoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/u1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/u1;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setTransparencyClickingThroughEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setTransparencyClickingThroughEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/v1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/v1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setUseWideViewPort(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setUseWideViewPort: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/w1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/w1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "userAgent"

    invoke-static {v0, p0, v1, p1, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setUserAgent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/x1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/x1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setUserInteractionEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setUserInteractionEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/y1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/y1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setVerticalScrollBarEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setVerticalScrollBarEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/z1;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/z1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setWebContentsDebuggingEnabled(Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setWebContentsDebuggingEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/a2;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/a2;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final setWebViewAlpha(Ljava/lang/String;F)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setWebViewAlpha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/b2;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/b2;-><init>(F)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setZoomEnabled(Ljava/lang/String;Z)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface setZoomEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/c2;

    invoke-direct {v1, p1}, Lcom/onevcat/uniwebview/c2;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final show(Ljava/lang/String;ZIFLjava/lang/String;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "identifier"

    invoke-static {v0, p0, v1, p4, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Interface show"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, La/i;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/d2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/d2;-><init>(ZIFLjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method public static final showAsync(Ljava/lang/String;ZIFLjava/lang/String;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    const-string v1, "name"

    const-string v2, "identifier"

    invoke-static {v0, p0, v1, p4, v2}, La/d0;->a(Lcom/onevcat/uniwebview/UniWebViewInterface$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Interface showAsync"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, La/i;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/onevcat/uniwebview/e2;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/e2;-><init>(ZIFLjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final stop(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, La/i;->c:La/i$a;

    sget-object v1, La/i;->d:La/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interface stop: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/i;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/onevcat/uniwebview/f2;->a:Lcom/onevcat/uniwebview/f2;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
