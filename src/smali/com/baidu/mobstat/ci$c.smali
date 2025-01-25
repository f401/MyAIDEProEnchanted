.class Lcom/baidu/mobstat/ci$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/view/View;

.field public c:Lcom/baidu/mobstat/ci$a;

.field public d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/baidu/mobstat/ci$c;->a:Ljava/lang/String;

    .line 468
    iput-object p2, p0, Lcom/baidu/mobstat/ci$c;->b:Landroid/view/View;

    .line 469
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/mobstat/ci$c;->c:Lcom/baidu/mobstat/ci$a;

    .line 470
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/baidu/mobstat/ci$c;->d:F

    return-void
.end method
