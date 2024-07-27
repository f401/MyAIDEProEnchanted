.class public final enum Lcom/sun/tools/javac/parser/Scanner$CommentStyle;
.super Ljava/lang/Enum;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/parser/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/tools/javac/parser/Scanner$CommentStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

.field public static final enum BLOCK:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

.field public static final enum JAVADOC:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

.field public static final enum LINE:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1092
    new-instance v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v3}, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->LINE:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 1093
    new-instance v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->BLOCK:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 1094
    new-instance v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    const-string v1, "JAVADOC"

    invoke-direct {v0, v1, v5}, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->JAVADOC:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    .line 1091
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    sget-object v2, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->LINE:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->BLOCK:Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->$VALUES:[Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1091
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/tools/javac/parser/Scanner$CommentStyle;
    .registers 2

    .line 1091
    const-class v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    return-object v0
.end method

.method public static values()[Lcom/sun/tools/javac/parser/Scanner$CommentStyle;
    .registers 1

    .line 1091
    sget-object v0, Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->$VALUES:[Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    invoke-virtual {v0}, [Lcom/sun/tools/javac/parser/Scanner$CommentStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/tools/javac/parser/Scanner$CommentStyle;

    return-object v0
.end method
