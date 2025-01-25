.class public final enum Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
.super Ljava/lang/Enum;
.source "SnippetFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/SnippetFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnippetKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum CLASS_BODY_DECLARATIONS:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum COMPILATION_UNIT:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum EXPRESSION:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum STATEMENTS:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "COMPILATION_UNIT"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->COMPILATION_UNIT:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    .line 195
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "CLASS_BODY_DECLARATIONS"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->CLASS_BODY_DECLARATIONS:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    .line 196
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "STATEMENTS"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->STATEMENTS:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    .line 197
    new-instance v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "EXPRESSION"

    invoke-direct {v0, v1, v6}, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->EXPRESSION:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    .line 193
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    sget-object v2, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->COMPILATION_UNIT:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->CLASS_BODY_DECLARATIONS:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->STATEMENTS:Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->$VALUES:[Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
    .registers 2

    .line 193
    const-class v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
    .registers 1

    .line 193
    sget-object v0, Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->$VALUES:[Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    return-object v0
.end method
