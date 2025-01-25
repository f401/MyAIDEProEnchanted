.class public final enum Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type$ForAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConstraintKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

.field public static final enum EQUAL:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

.field public static final enum EXTENDS:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

.field public static final enum SUPER:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1200
    new-instance v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    const-string v1, "EXTENDS"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->EXTENDS:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    .line 1206
    new-instance v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    const-string v1, "SUPER"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->SUPER:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    .line 1211
    new-instance v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    const-string v1, "EQUAL"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->EQUAL:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    .line 1194
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    sget-object v2, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->EXTENDS:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->SUPER:Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->$VALUES:[Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;
    .registers 2

    .line 1194
    const-class v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;
    .registers 1

    .line 1194
    sget-object v0, Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->$VALUES:[Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/code/Type$ForAll$ConstraintKind;

    return-object v0
.end method
