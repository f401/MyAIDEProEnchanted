.class final enum Labcd/Jv$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/Jv$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/Jv$b;

.field public static final enum FH:Labcd/Jv$b;

.field public static final enum Hw:Labcd/Jv$b;

.field public static final enum VH:Labcd/Jv$b;

.field public static final enum Zo:Labcd/Jv$b;

.field public static final enum gn:Labcd/Jv$b;

.field public static final enum j6:Labcd/Jv$b;

.field private static final tp:[Labcd/Jv$b;

.field public static final enum u7:Labcd/Jv$b;

.field public static final enum v5:Labcd/Jv$b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->j6:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->DW:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->FH:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->Hw:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->v5:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->Zo:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->VH:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_ITEM_ALREADY_OWNED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->gn:Labcd/Jv$b;

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_ITEM_NOT_OWNED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->u7:Labcd/Jv$b;

    const/16 v0, 0x9

    new-array v0, v0, [Labcd/Jv$b;

    sget-object v1, Labcd/Jv$b;->j6:Labcd/Jv$b;

    aput-object v1, v0, v3

    sget-object v1, Labcd/Jv$b;->DW:Labcd/Jv$b;

    aput-object v1, v0, v4

    sget-object v1, Labcd/Jv$b;->FH:Labcd/Jv$b;

    aput-object v1, v0, v5

    sget-object v1, Labcd/Jv$b;->Hw:Labcd/Jv$b;

    aput-object v1, v0, v6

    sget-object v1, Labcd/Jv$b;->v5:Labcd/Jv$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Labcd/Jv$b;->Zo:Labcd/Jv$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labcd/Jv$b;->VH:Labcd/Jv$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labcd/Jv$b;->gn:Labcd/Jv$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labcd/Jv$b;->u7:Labcd/Jv$b;

    aput-object v2, v0, v1

    sput-object v0, Labcd/Jv$b;->tp:[Labcd/Jv$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static DW(I)Labcd/Jv$b;
    .registers 3

    invoke-static {}, Labcd/Jv$b;->values()[Labcd/Jv$b;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Labcd/Jv$b;->VH:Labcd/Jv$b;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method static synthetic j6(I)Labcd/Jv$b;
    .registers 2

    invoke-static {p0}, Labcd/Jv$b;->DW(I)Labcd/Jv$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/Jv$b;
    .registers 2

    const-class v0, Labcd/Jv$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Jv$b;

    return-object v0
.end method

.method public static values()[Labcd/Jv$b;
    .registers 1

    sget-object v0, Labcd/Jv$b;->tp:[Labcd/Jv$b;

    invoke-virtual {v0}, [Labcd/Jv$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Jv$b;

    return-object v0
.end method
