.class Lcom/baidu/mobstat/ap$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/baidu/mobstat/ap$a;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ap$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/ap$d$a;->b:Lcom/baidu/mobstat/ap$a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ap$d$a;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/ap$d$a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/ap$d$a;)Lcom/baidu/mobstat/ap$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ap$d$a;->b:Lcom/baidu/mobstat/ap$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/ap$d$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/ap$d$a;->a:I

    return-void
.end method
