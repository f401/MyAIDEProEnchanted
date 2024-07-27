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
        "Ljava/lang/Enum",
        "<",
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
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/RE$a;

    const-string v1, "NOT_ATTEMPTED"

    invoke-direct {v0, v1, v3}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->j6:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "LOCK_FAILURE"

    invoke-direct {v0, v1, v4}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->DW:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "NO_CHANGE"

    invoke-direct {v0, v1, v5}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->FH:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v6}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->Hw:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "FORCED"

    invoke-direct {v0, v1, v7}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->v5:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "FAST_FORWARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->Zo:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "REJECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->VH:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "REJECTED_CURRENT_BRANCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->gn:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "IO_FAILURE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->u7:Labcd/RE$a;

    new-instance v0, Labcd/RE$a;

    const-string v1, "RENAMED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Labcd/RE$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/RE$a;->tp:Labcd/RE$a;

    const/16 v0, 0xa

    new-array v0, v0, [Labcd/RE$a;

    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    aput-object v1, v0, v4

    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    aput-object v1, v0, v5

    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    aput-object v1, v0, v6

    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Labcd/RE$a;->Zo:Labcd/RE$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labcd/RE$a;->VH:Labcd/RE$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labcd/RE$a;->gn:Labcd/RE$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labcd/RE$a;->u7:Labcd/RE$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Labcd/RE$a;->tp:Labcd/RE$a;

    aput-object v2, v0, v1

    sput-object v0, Labcd/RE$a;->EQ:[Labcd/RE$a;

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

    move-result-object v0

    check-cast v0, Labcd/RE$a;

    return-object v0
.end method

.method public static values()[Labcd/RE$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/RE$a;->EQ:[Labcd/RE$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/RE$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
