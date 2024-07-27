.class public final enum Lcom/baidu/mobstat/Config$EventViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/Config$EventViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUTTON:Lcom/baidu/mobstat/Config$EventViewType;

.field public static final enum EDIT:Lcom/baidu/mobstat/Config$EventViewType;

.field private static final b:[Lcom/baidu/mobstat/Config$EventViewType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    new-instance v0, Lcom/baidu/mobstat/Config$EventViewType;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/Config$EventViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    .line 367
    new-instance v0, Lcom/baidu/mobstat/Config$EventViewType;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mobstat/Config$EventViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/Config$EventViewType;->BUTTON:Lcom/baidu/mobstat/Config$EventViewType;

    .line 362
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mobstat/Config$EventViewType;

    sget-object v1, Lcom/baidu/mobstat/Config$EventViewType;->EDIT:Lcom/baidu/mobstat/Config$EventViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/Config$EventViewType;->BUTTON:Lcom/baidu/mobstat/Config$EventViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mobstat/Config$EventViewType;->b:[Lcom/baidu/mobstat/Config$EventViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p3, p0, Lcom/baidu/mobstat/Config$EventViewType;->a:I

    .line 373
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/Config$EventViewType;
    .registers 2

    .line 362
    const-class v0, Lcom/baidu/mobstat/Config$EventViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Config$EventViewType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/Config$EventViewType;
    .registers 1

    .line 362
    sget-object v0, Lcom/baidu/mobstat/Config$EventViewType;->b:[Lcom/baidu/mobstat/Config$EventViewType;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/Config$EventViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/Config$EventViewType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 381
    iget v0, p0, Lcom/baidu/mobstat/Config$EventViewType;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 377
    iget v0, p0, Lcom/baidu/mobstat/Config$EventViewType;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
