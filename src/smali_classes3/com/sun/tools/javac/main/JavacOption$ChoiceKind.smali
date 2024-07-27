.class public final enum Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;
.super Ljava/lang/Enum;
.source "JavacOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavacOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChoiceKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

.field public static final enum ANYOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

.field public static final enum ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const-string v1, "ONEOF"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    .line 91
    new-instance v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    const-string v1, "ANYOF"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ANYOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    .line 89
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    sget-object v2, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->ONEOF:Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->$VALUES:[Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;
    .registers 2

    .line 89
    const-class v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;
    .registers 1

    .line 89
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->$VALUES:[Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/JavacOption$ChoiceKind;

    return-object v0
.end method
