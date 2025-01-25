.class public final enum Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
.super Ljava/lang/Enum;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final enum END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

.field public static final enum START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
    .registers 3

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 92
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->START:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 95
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_SIMPLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 98
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_REPLACED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 101
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_MOVED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 107
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_CLOBBERED_BY_PREV"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 113
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    const-string v1, "END_CLOBBERED_BY_NEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    .line 90
    invoke-static {}, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->$values()[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
    .registers 2

    .line 90
    const-class v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;
    .registers 1

    .line 90
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->$VALUES:[Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    return-object v0
.end method
