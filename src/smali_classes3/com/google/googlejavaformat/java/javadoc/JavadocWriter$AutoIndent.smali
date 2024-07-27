.class final enum Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;
.super Ljava/lang/Enum;
.source "JavadocWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javadoc/JavadocWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AutoIndent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

.field public static final enum AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

.field public static final enum NO_AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 409
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    const-string v1, "AUTO_INDENT"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    .line 410
    new-instance v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    const-string v1, "NO_AUTO_INDENT"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->NO_AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    .line 408
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    sget-object v2, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->AUTO_INDENT:Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->$VALUES:[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;
    .registers 2

    .line 408
    const-class v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;
    .registers 1

    .line 408
    sget-object v0, Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->$VALUES:[Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/javadoc/JavadocWriter$AutoIndent;

    return-object v0
.end method
