.class final Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseGuard"
.end annotation


# instance fields
.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static get()Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "dalvik.system.CloseGuard"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "get"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v0, "open"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "warnIfOpen"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2e

    move-result-object v1

    move-object v2, v1

    :goto_28
    new-instance v1, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-direct {v1, v3, v0, v2}, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v1

    :catch_2e
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_28
.end method


# virtual methods
.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_7
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    :cond_1a
    move-object v0, v1

    goto :goto_18
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method
