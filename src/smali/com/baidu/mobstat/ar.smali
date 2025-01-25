.class public interface abstract Lcom/baidu/mobstat/ar;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x18

    const/16 v1, 0x20

    const/16 v2, 0x10

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ar;->a:[I

    return-void
.end method
