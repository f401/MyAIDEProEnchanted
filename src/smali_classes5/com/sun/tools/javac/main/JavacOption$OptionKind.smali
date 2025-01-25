.class public final enum Lcom/sun/tools/javac/main/JavacOption$OptionKind;
.super Ljava/lang/Enum;
.source "JavacOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavacOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/main/JavacOption$OptionKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/main/JavacOption$OptionKind;

.field public static final enum EXTENDED:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

.field public static final enum HIDDEN:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

.field public static final enum NORMAL:Lcom/sun/tools/javac/main/JavacOption$OptionKind;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/main/JavacOption$OptionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->NORMAL:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    .line 85
    new-instance v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    const-string v1, "EXTENDED"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/main/JavacOption$OptionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->EXTENDED:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    .line 86
    new-instance v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/main/JavacOption$OptionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->HIDDEN:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    .line 83
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    sget-object v2, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->NORMAL:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->EXTENDED:Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->$VALUES:[Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/main/JavacOption$OptionKind;
    .registers 2

    .line 83
    const-class v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/main/JavacOption$OptionKind;
    .registers 1

    .line 83
    sget-object v0, Lcom/sun/tools/javac/main/JavacOption$OptionKind;->$VALUES:[Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/main/JavacOption$OptionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/main/JavacOption$OptionKind;

    return-object v0
.end method
