.class enum Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
.super Ljava/lang/Enum;
.source "MixedItemSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field public static final INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field public static final NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field public static final TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v4}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
    .registers 5

    .line 49
    sget-object v1, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
    .registers 1

    .line 49
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    return-object v0
.end method
