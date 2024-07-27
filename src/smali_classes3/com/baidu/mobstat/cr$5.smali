.class Lcom/baidu/mobstat/cr$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/cr;->a(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/util/ArrayList;

.field final c:Lcom/baidu/mobstat/cr;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4

    .line 726
    iput-object p1, p0, Lcom/baidu/mobstat/cr$5;->c:Lcom/baidu/mobstat/cr;

    iput-object p2, p0, Lcom/baidu/mobstat/cr$5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/cr$5;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 728
    iget-object v0, p0, Lcom/baidu/mobstat/cr$5;->c:Lcom/baidu/mobstat/cr;

    iget-object v1, p0, Lcom/baidu/mobstat/cr$5;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/cr$5;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/cr;->a(Lcom/baidu/mobstat/cr;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 729
    return-void
.end method
