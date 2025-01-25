.class public abstract Lcom/baidu/mobstat/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/dd$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/df$a;,
        Lcom/baidu/mobstat/df$a$a;,
        Lcom/baidu/mobstat/df$b;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/mobstat/dd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/app/Activity;Lorg/json/JSONObject;Z)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/baidu/mobstat/df;->a:Lcom/baidu/mobstat/dd;

    if-nez v0, :cond_e

    .line 214
    new-instance v0, Lcom/baidu/mobstat/dd;

    invoke-direct {v0, p1, p0, p3}, Lcom/baidu/mobstat/dd;-><init>(Landroid/app/Activity;Lcom/baidu/mobstat/df;Z)V

    iput-object v0, p0, Lcom/baidu/mobstat/df;->a:Lcom/baidu/mobstat/dd;

    .line 215
    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/dd;->a(Lorg/json/JSONObject;)V

    .line 218
    :cond_e
    iget-object p2, p0, Lcom/baidu/mobstat/df;->a:Lcom/baidu/mobstat/dd;

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/dd;->a(Landroid/app/Activity;)V

    return-void
.end method
