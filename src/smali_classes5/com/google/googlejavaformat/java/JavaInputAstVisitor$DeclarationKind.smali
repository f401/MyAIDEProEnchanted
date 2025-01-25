.class final enum Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;
.super Ljava/lang/Enum;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DeclarationKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

.field public static final enum FIELD:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

.field public static final enum NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

.field public static final enum PARAMETER:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3458
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 3459
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    const-string v1, "FIELD"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->FIELD:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 3460
    new-instance v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    const-string v1, "PARAMETER"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 3457
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->FIELD:Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;
    .registers 2

    .line 3457
    const-class v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;
    .registers 1

    .line 3457
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->$VALUES:[Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    return-object v0
.end method
