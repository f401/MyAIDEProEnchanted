.class public Lcom/baidu/mobstat/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/bz$b;
    }
.end annotation


# static fields
.field private static volatile a:Z = true

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/bz;->b:Z

    .line 30
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ch;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .registers 2

    .line 38
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ch;->a(Z)V

    return-void
.end method

.method public static a()Z
    .registers 1

    .line 21
    sget-boolean v0, Lcom/baidu/mobstat/bz;->b:Z

    return v0
.end method

.method public static b()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/baidu/mobstat/bz;->a:Z

    return v0
.end method

.method public static c()Lorg/json/JSONArray;
    .registers 1

    .line 61
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ch;->e()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
