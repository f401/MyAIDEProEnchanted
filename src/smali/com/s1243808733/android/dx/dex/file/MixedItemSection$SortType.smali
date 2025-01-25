.class final enum Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
.super Ljava/lang/Enum;
.source "MixedItemSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/file/MixedItemSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

.field public static final enum TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
    .registers 3

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    .line 46
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    .line 49
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    .line 41
    invoke-static {}, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->$values()[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
    .registers 2

    .line 41
    const-class v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;
    .registers 1

    .line 41
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/dex/file/MixedItemSection$SortType;

    return-object v0
.end method
