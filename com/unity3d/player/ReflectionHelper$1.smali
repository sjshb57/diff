.class public final Lcom/unity3d/player/ReflectionHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/ReflectionHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(J[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:[Ljava/lang/Class;

.field public c:J

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(J[Ljava/lang/Class;)V
    .registers 4

    iput-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:J

    iput-object p3, p0, Lcom/unity3d/player/ReflectionHelper$1;->b:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->c:J

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    if-nez p3, :cond_5

    :try_start_3
    new-array p3, v0, [Ljava/lang/Object;

    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/invoke/MethodHandles$Lookup;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3e} :catch_3f

    return-object p1

    :catch_3f
    const/4 p1, 0x0

    sget-object p1, Lcom/saucesdk/android/getgaid/shYz/gnCvd;->GBH:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    iget-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->d:J

    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->a(J)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->d:J

    iput-boolean p3, p0, Lcom/unity3d/player/ReflectionHelper$1;->e:Z

    return-void
.end method

.method protected final finalize()V
    .registers 3

    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->c:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->b(J)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_15

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_15
    move-exception v0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->c:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p1, 0x6

    const-string p2, "Scripting proxy object was destroyed, because Unity player was unloaded."

    invoke-static {p1, p2}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_10
    const-wide/16 v0, 0x0

    :try_start_12
    iput-wide v0, p0, Lcom/unity3d/player/ReflectionHelper$1;->d:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unity3d/player/ReflectionHelper$1;->e:Z

    iget-wide v2, p0, Lcom/unity3d/player/ReflectionHelper$1;->a:J

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p3}, Lcom/unity3d/player/ReflectionHelper;->a(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unity3d/player/ReflectionHelper$1;->e:Z

    if-eqz v3, :cond_3b

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_35

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper$1;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_46

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object p1

    :cond_35
    :try_start_35
    iget-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->d:J

    :goto_37
    invoke-static {p1, p2}, Lcom/unity3d/player/ReflectionHelper;->a(J)V

    goto :goto_42

    :cond_3b
    iget-wide p1, p0, Lcom/unity3d/player/ReflectionHelper$1;->d:J
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_46

    cmp-long p3, p1, v0

    if-eqz p3, :cond_42

    goto :goto_37

    :cond_42
    :goto_42
    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-object v2

    :catchall_46
    move-exception p1

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    throw p1
.end method
