.class public final enum Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;
.super Ljava/lang/Enum;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealOrImaginary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

.field public static final enum IMAGINARY:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

.field public static final enum REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 389
    new-instance v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 390
    new-instance v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    const-string v1, "IMAGINARY"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->IMAGINARY:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 388
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v2, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->$VALUES:[Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;
    .registers 2

    .line 388
    const-class v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;
    .registers 1

    .line 388
    sget-object v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->$VALUES:[Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    return-object v0
.end method


# virtual methods
.method isReal()Z
    .registers 2

    .line 393
    sget-object v0, Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lcom/google/googlejavaformat/Doc$Token$RealOrImaginary;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
