.class public final enum Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
.super Ljava/lang/Enum;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

.field public static final enum BLOCK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

.field public static final enum JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

.field public static final enum LINE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    const-string v1, "LINE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->LINE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 297
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->BLOCK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 298
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    const-string v1, "JAVADOC"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    .line 295
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->LINE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->BLOCK:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->$VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
    .registers 2

    .line 295
    const-class v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
    .registers 1

    .line 295
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->$VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;

    return-object v0
.end method
