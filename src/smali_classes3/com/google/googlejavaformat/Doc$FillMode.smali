.class public final enum Lcom/google/googlejavaformat/Doc$FillMode;
.super Ljava/lang/Enum;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/Doc$FillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/Doc$FillMode;

.field public static final enum FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

.field public static final enum INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

.field public static final enum UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, "UNIFIED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/Doc$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 53
    new-instance v0, Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, "INDEPENDENT"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/Doc$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 59
    new-instance v0, Lcom/google/googlejavaformat/Doc$FillMode;

    const-string v1, "FORCED"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/Doc$FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->FORCED:Lcom/google/googlejavaformat/Doc$FillMode;

    .line 42
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/googlejavaformat/Doc$FillMode;

    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lcom/google/googlejavaformat/Doc$FillMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lcom/google/googlejavaformat/Doc$FillMode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/googlejavaformat/Doc$FillMode;->$VALUES:[Lcom/google/googlejavaformat/Doc$FillMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/Doc$FillMode;
    .registers 2

    .line 42
    const-class v0, Lcom/google/googlejavaformat/Doc$FillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/Doc$FillMode;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/Doc$FillMode;
    .registers 1

    .line 42
    sget-object v0, Lcom/google/googlejavaformat/Doc$FillMode;->$VALUES:[Lcom/google/googlejavaformat/Doc$FillMode;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/Doc$FillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/Doc$FillMode;

    return-object v0
.end method
