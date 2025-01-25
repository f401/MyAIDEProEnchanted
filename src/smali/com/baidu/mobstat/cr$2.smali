.class Lcom/baidu/mobstat/cr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Z

.field final c:Lcom/baidu/mobstat/cr;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Z)V
    .registers 4

    .line 365
    iput-object p1, p0, Lcom/baidu/mobstat/cr$2;->c:Lcom/baidu/mobstat/cr;

    iput-object p2, p0, Lcom/baidu/mobstat/cr$2;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/baidu/mobstat/cr$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/baidu/mobstat/cr$2;->c:Lcom/baidu/mobstat/cr;

    iget-object v1, p0, Lcom/baidu/mobstat/cr$2;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/baidu/mobstat/cr$2;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/cr;->b(Landroid/content/Context;Z)V

    return-void
.end method
