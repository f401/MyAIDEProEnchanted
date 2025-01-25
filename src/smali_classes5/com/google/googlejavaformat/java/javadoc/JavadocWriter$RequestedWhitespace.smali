.class final enum Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
.super Ljava/lang/Enum;
.source "JavadocWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestedWhitespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum BLANK_LINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum NEWLINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

.field public static final enum WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 403
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "WHITESPACE"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 404
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "NEWLINE"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 405
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    const-string v1, "BLANK_LINE"

    invoke-direct {v0, v1, v6}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->BLANK_LINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    .line 401
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NONE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->WHITESPACE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->NEWLINE:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->$VALUES:[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
    .registers 2

    .line 401
    const-class v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;
    .registers 1

    .line 401
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->$VALUES:[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$RequestedWhitespace;

    return-object v0
.end method
