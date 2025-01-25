.class Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;
.super Ljavax/lang/model/util/SimpleElementVisitor7;
.source "PrintingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor7",
        "<",
        "Ljavax/lang/model/element/NestingKind;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;->this$0:Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleElementVisitor7;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 151
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljavax/lang/model/element/NestingKind;
    .registers 4

    .line 154
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method
