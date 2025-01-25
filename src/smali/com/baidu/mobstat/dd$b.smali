.class public Lcom/baidu/mobstat/dd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field final e:Lcom/baidu/mobstat/dd;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/dd;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    .line 166
    iput-object p1, p0, Lcom/baidu/mobstat/dd$b;->e:Lcom/baidu/mobstat/dd;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/baidu/mobstat/dd$b;->a:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/baidu/mobstat/dd$b;->b:Ljava/lang/String;

    .line 170
    iput-boolean p4, p0, Lcom/baidu/mobstat/dd$b;->c:Z

    .line 171
    iput p5, p0, Lcom/baidu/mobstat/dd$b;->d:I

    return-void
.end method
