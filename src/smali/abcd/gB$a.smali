.class public final enum Labcd/gB$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/gB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/gB$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/gB$a;

.field private static final FH:[Labcd/gB$a;

.field public static final enum j6:Labcd/gB$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/gB$a;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Labcd/gB$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/gB$a;->j6:Labcd/gB$a;

    new-instance v0, Labcd/gB$a;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v3}, Labcd/gB$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/gB$a;->DW:Labcd/gB$a;

    const/4 v0, 0x2

    new-array v0, v0, [Labcd/gB$a;

    sget-object v1, Labcd/gB$a;->j6:Labcd/gB$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/gB$a;->DW:Labcd/gB$a;

    aput-object v1, v0, v3

    sput-object v0, Labcd/gB$a;->FH:[Labcd/gB$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/gB$a;
    .registers 2

    const-class v0, Labcd/gB$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/gB$a;

    return-object v0
.end method

.method public static values()[Labcd/gB$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Labcd/gB$a;->FH:[Labcd/gB$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/gB$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
