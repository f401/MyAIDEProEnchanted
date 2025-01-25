.class public final enum Labcd/RE$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/RE$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/RE$a;

.field private static final EQ:[Labcd/RE$a;

.field public static final enum FH:Labcd/RE$a;

.field public static final enum Hw:Labcd/RE$a;

.field public static final enum VH:Labcd/RE$a;

.field public static final enum Zo:Labcd/RE$a;

.field public static final enum gn:Labcd/RE$a;

.field public static final enum j6:Labcd/RE$a;

.field public static final enum tp:Labcd/RE$a;

.field public static final enum u7:Labcd/RE$a;

.field public static final enum v5:Labcd/RE$a;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Labcd/RE$a;

    const-string v1, "NOT_ATTEMPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->j6:Labcd/RE$a;

    new-instance v1, Labcd/RE$a;

    const-string v3, "LOCK_FAILURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    new-instance v3, Labcd/RE$a;

    const-string v5, "NO_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/RE$a;->FH:Labcd/RE$a;

    new-instance v5, Labcd/RE$a;

    const-string v7, "NEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/RE$a;->Hw:Labcd/RE$a;

    new-instance v7, Labcd/RE$a;

    const-string v9, "FORCED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Labcd/RE$a;->v5:Labcd/RE$a;

    new-instance v9, Labcd/RE$a;

    const-string v11, "FAST_FORWARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Labcd/RE$a;->Zo:Labcd/RE$a;

    new-instance v11, Labcd/RE$a;

    const-string v13, "REJECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Labcd/RE$a;->VH:Labcd/RE$a;

    new-instance v13, Labcd/RE$a;

    const-string v15, "REJECTED_CURRENT_BRANCH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Labcd/RE$a;->gn:Labcd/RE$a;

    new-instance v15, Labcd/RE$a;

    const-string v14, "IO_FAILURE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Labcd/RE$a;->u7:Labcd/RE$a;

    new-instance v14, Labcd/RE$a;

    const-string v12, "RENAMED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Labcd/RE$a;->tp:Labcd/RE$a;

    const/16 v12, 0xa

    new-array v12, v12, [Labcd/RE$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Labcd/RE$a;->EQ:[Labcd/RE$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/RE$a;
    .registers 2

    const-class v0, Labcd/RE$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/RE$a;

    return-object p0
.end method

.method public static values()[Labcd/RE$a;
    .registers 4

    sget-object v0, Labcd/RE$a;->EQ:[Labcd/RE$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/RE$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
