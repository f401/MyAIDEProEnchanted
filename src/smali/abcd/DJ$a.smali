.class public final enum Labcd/DJ$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/DJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/DJ$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/DJ$a;

.field public static final enum FH:Labcd/DJ$a;

.field public static final enum Hw:Labcd/DJ$a;

.field private static final Zo:[Labcd/DJ$a;

.field public static final enum j6:Labcd/DJ$a;

.field public static final enum v5:Labcd/DJ$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/DJ$a;

    const-string v1, "USER"

    invoke-direct {v0, v1, v6}, Labcd/DJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/DJ$a;->j6:Labcd/DJ$a;

    new-instance v1, Labcd/DJ$a;

    const-string v2, "PASS"

    invoke-direct {v1, v2, v7}, Labcd/DJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/DJ$a;->DW:Labcd/DJ$a;

    new-instance v2, Labcd/DJ$a;

    const-string v3, "HOST"

    invoke-direct {v2, v3, v8}, Labcd/DJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/DJ$a;->FH:Labcd/DJ$a;

    new-instance v3, Labcd/DJ$a;

    const-string v4, "PORT"

    invoke-direct {v3, v4, v9}, Labcd/DJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/DJ$a;->Hw:Labcd/DJ$a;

    new-instance v4, Labcd/DJ$a;

    const-string v5, "PATH"

    invoke-direct {v4, v5, v10}, Labcd/DJ$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Labcd/DJ$a;->v5:Labcd/DJ$a;

    const/4 v5, 0x5

    new-array v5, v5, [Labcd/DJ$a;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Labcd/DJ$a;->Zo:[Labcd/DJ$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/DJ$a;
    .locals 1

    const-class v0, Labcd/DJ$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/DJ$a;

    return-object v0
.end method

.method public static values()[Labcd/DJ$a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Labcd/DJ$a;->Zo:[Labcd/DJ$a;

    array-length v1, v0

    new-array v2, v1, [Labcd/DJ$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
