.class final enum Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/control/customizers/ImportCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ImportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

.field public static final enum FH:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

.field public static final enum Hw:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

.field public static final enum j6:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

.field private static final v5:[Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    const-string v1, "regular"

    invoke-direct {v0, v1, v5}, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->j6:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    new-instance v1, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    const-string v2, "staticImport"

    invoke-direct {v1, v2, v6}, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->DW:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    new-instance v2, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    const-string v3, "staticStar"

    invoke-direct {v2, v3, v7}, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->FH:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    new-instance v3, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    const-string v4, "star"

    invoke-direct {v3, v4, v8}, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->Hw:Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->v5:[Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;
    .locals 1

    const-class v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;
    .locals 1

    sget-object v0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->v5:[Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    invoke-virtual {v0}, [Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;

    return-object v0
.end method
