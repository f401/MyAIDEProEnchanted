.class public Lcom/baidu/mobstat/aq;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/aq;->b:I

    iput-boolean v0, p0, Lcom/baidu/mobstat/aq;->c:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/aq;->d:Z

    return-void
.end method
