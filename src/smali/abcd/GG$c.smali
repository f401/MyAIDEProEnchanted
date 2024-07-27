.class final enum Labcd/GG$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/GG$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/GG$c;

.field public static final enum FH:Labcd/GG$c;

.field public static final enum Hw:Labcd/GG$c;

.field public static final enum j6:Labcd/GG$c;

.field private static final v5:[Labcd/GG$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/GG$c;

    const-string v1, "INSERTED"

    invoke-direct {v0, v1, v2}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/GG$c;->j6:Labcd/GG$c;

    new-instance v0, Labcd/GG$c;

    const-string v1, "EXISTS_PACKED"

    invoke-direct {v0, v1, v3}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/GG$c;->DW:Labcd/GG$c;

    new-instance v0, Labcd/GG$c;

    const-string v1, "EXISTS_LOOSE"

    invoke-direct {v0, v1, v4}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/GG$c;->FH:Labcd/GG$c;

    new-instance v0, Labcd/GG$c;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v5}, Labcd/GG$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/GG$c;->Hw:Labcd/GG$c;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/GG$c;

    sget-object v1, Labcd/GG$c;->j6:Labcd/GG$c;

    aput-object v1, v0, v2

    sget-object v1, Labcd/GG$c;->DW:Labcd/GG$c;

    aput-object v1, v0, v3

    sget-object v1, Labcd/GG$c;->FH:Labcd/GG$c;

    aput-object v1, v0, v4

    sget-object v1, Labcd/GG$c;->Hw:Labcd/GG$c;

    aput-object v1, v0, v5

    sput-object v0, Labcd/GG$c;->v5:[Labcd/GG$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/GG$c;
    .registers 2

    const-class v0, Labcd/GG$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/GG$c;

    return-object v0
.end method

.method public static values()[Labcd/GG$c;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/GG$c;->v5:[Labcd/GG$c;

    array-length v1, v0

    new-array v2, v1, [Labcd/GG$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
