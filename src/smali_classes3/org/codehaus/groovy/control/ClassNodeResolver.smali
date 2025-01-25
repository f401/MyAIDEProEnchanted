.class public Lorg/codehaus/groovy/control/ClassNodeResolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/control/ClassNodeResolver$LookupResult;
    }
.end annotation


# static fields
.field protected static final j6:Lorg/codehaus/groovy/ast/ClassNode;


# instance fields
.field private DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/ast/ClassNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/codehaus/groovy/control/ClassNodeResolver$1;

    const/4 v1, 0x1

    sget-object v2, Lorg/codehaus/groovy/ast/ClassHelper;->Hw:Lorg/codehaus/groovy/ast/ClassNode;

    const-string v3, "NO_CLASS"

    invoke-direct {v0, v3, v1, v2}, Lorg/codehaus/groovy/control/ClassNodeResolver$1;-><init>(Ljava/lang/String;ILorg/codehaus/groovy/ast/ClassNode;)V

    sput-object v0, Lorg/codehaus/groovy/control/ClassNodeResolver;->j6:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/ClassNodeResolver;->DW:Ljava/util/Map;

    return-void
.end method
