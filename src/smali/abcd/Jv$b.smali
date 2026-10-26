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
    .locals 16

    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Labcd/Jv$b;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v11}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Jv$b;->j6:Labcd/Jv$b;

    new-instance v1, Labcd/Jv$b;

    const-string v2, "RESULT_USER_CANCELED"

    invoke-direct {v1, v2, v12}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/Jv$b;->DW:Labcd/Jv$b;

    new-instance v2, Labcd/Jv$b;

    const-string v3, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v2, v3, v13}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/Jv$b;->FH:Labcd/Jv$b;

    new-instance v3, Labcd/Jv$b;

    const-string v4, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v3, v4, v14}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/Jv$b;->Hw:Labcd/Jv$b;

    new-instance v4, Labcd/Jv$b;

    const-string v5, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v4, v5, v15}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/Jv$b;->v5:Labcd/Jv$b;

    new-instance v5, Labcd/Jv$b;

    const-string v6, "RESULT_DEVELOPER_ERROR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/Jv$b;->Zo:Labcd/Jv$b;

    new-instance v6, Labcd/Jv$b;

    const-string v7, "RESULT_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Labcd/Jv$b;->VH:Labcd/Jv$b;

    new-instance v7, Labcd/Jv$b;

    const-string v8, "RESULT_ITEM_ALREADY_OWNED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/Jv$b;->gn:Labcd/Jv$b;

    new-instance v8, Labcd/Jv$b;

    const-string v9, "RESULT_ITEM_NOT_OWNED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Labcd/Jv$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Labcd/Jv$b;->u7:Labcd/Jv$b;

    const/16 v9, 0x9

    new-array v9, v9, [Labcd/Jv$b;

    aput-object v0, v9, v11

    aput-object v1, v9, v12

    aput-object v2, v9, v13

    aput-object v3, v9, v14

    aput-object v4, v9, v15

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    sput-object v9, Labcd/Jv$b;->tp:[Labcd/Jv$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static DW(I)Labcd/Jv$b;
    .locals 2

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
    .locals 1

    invoke-static {p0}, Labcd/Jv$b;->DW(I)Labcd/Jv$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/Jv$b;
    .locals 1

    const-class v0, Labcd/Jv$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Jv$b;

    return-object v0
.end method

.method public static values()[Labcd/Jv$b;
    .locals 1

    sget-object v0, Labcd/Jv$b;->tp:[Labcd/Jv$b;

    invoke-virtual {v0}, [Labcd/Jv$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Jv$b;

    return-object v0
.end method
