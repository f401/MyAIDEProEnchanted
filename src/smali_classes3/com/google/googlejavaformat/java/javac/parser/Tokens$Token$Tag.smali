.class final enum Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;
.super Ljava/lang/Enum;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

.field public static final enum DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

.field public static final enum NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

.field public static final enum NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

.field public static final enum STRING:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    .line 316
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    const-string v1, "NAMED"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    .line 317
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->STRING:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    .line 318
    new-instance v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    const-string v1, "NUMERIC"

    invoke-direct {v0, v1, v6}, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NUMERIC:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    .line 314
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->DEFAULT:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->NAMED:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->STRING:Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->$VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;
    .registers 2

    .line 314
    const-class v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;
    .registers 1

    .line 314
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->$VALUES:[Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/javac/parser/Tokens$Token$Tag;

    return-object v0
.end method
