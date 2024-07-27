.class public Lorg/codehaus/groovy/ast/stmt/EmptyStatement;
.super Lorg/codehaus/groovy/ast/stmt/Statement;


# static fields
.field public static final VH:Lorg/codehaus/groovy/ast/stmt/EmptyStatement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/groovy/ast/stmt/EmptyStatement;

    invoke-direct {v0}, Lorg/codehaus/groovy/ast/stmt/EmptyStatement;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/ast/stmt/EmptyStatement;->VH:Lorg/codehaus/groovy/ast/stmt/EmptyStatement;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/stmt/Statement;-><init>()V

    return-void
.end method
