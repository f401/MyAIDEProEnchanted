.class public final enum Labcd/xF$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/xF$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/xF$a;

.field public static final enum FH:Labcd/xF$a;

.field private static final Hw:[Labcd/xF$a;

.field public static final enum j6:Labcd/xF$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/xF$a;

    const-string v1, "DIRTY_INDEX"

    invoke-direct {v0, v1, v2}, Labcd/xF$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/xF$a;->j6:Labcd/xF$a;

    new-instance v0, Labcd/xF$a;

    const-string v1, "DIRTY_WORKTREE"

    invoke-direct {v0, v1, v3}, Labcd/xF$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/xF$a;->DW:Labcd/xF$a;

    new-instance v0, Labcd/xF$a;

    const-string v1, "COULD_NOT_DELETE"

    invoke-direct {v0, v1, v4}, Labcd/xF$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/xF$a;->FH:Labcd/xF$a;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/xF$a;

    sget-object v1, Labcd/xF$a;->j6:Labcd/xF$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/xF$a;->DW:Labcd/xF$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/xF$a;->FH:Labcd/xF$a;

    aput-object v1, v0, v4

    sput-object v0, Labcd/xF$a;->Hw:[Labcd/xF$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/xF$a;
    .registers 2

    const-class v0, Labcd/xF$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/xF$a;

    return-object v0
.end method

.method public static values()[Labcd/xF$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/xF$a;->Hw:[Labcd/xF$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/xF$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
