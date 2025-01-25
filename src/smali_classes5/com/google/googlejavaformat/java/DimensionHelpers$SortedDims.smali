.class final enum Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;
.super Ljava/lang/Enum;
.source "DimensionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/DimensionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SortedDims"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

.field public static final enum NO:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

.field public static final enum YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    .line 114
    new-instance v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->NO:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    .line 112
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    sget-object v2, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->$VALUES:[Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;
    .registers 2

    .line 112
    const-class v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;
    .registers 1

    .line 112
    sget-object v0, Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->$VALUES:[Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    return-object v0
.end method
