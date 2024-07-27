.class public enum Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
.super Ljava/lang/Enum;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Disposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_SIMPLY"

    invoke-direct {v0, v1, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_REPLACED"

    invoke-direct {v0, v1, v5}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_MOVED"

    invoke-direct {v0, v1, v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_CLOBBERED_BY_PREV"

    invoke-direct {v0, v1, v7}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_CLOBBERED_BY_NEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
    .registers 5

    .line 113
    sget-object v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
    .registers 1

    .line 113
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    return-object v0
.end method
