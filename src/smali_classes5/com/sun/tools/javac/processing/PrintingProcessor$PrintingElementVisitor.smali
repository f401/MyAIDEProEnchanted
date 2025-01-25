.class public Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
.super Ljavax/lang/model/util/SimpleElementVisitor7;
.source "PrintingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/PrintingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintingElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor7",
        "<",
        "Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final spaces:[Ljava/lang/String;


# instance fields
.field final elementUtils:Ljavax/lang/model/util/Elements;

.field indentation:I

.field final writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 548
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "          "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "            "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "              "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "                "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "                  "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "                    "

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljavax/lang/model/util/Elements;)V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleElementVisitor7;-><init>()V

    .line 124
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    .line 125
    iput-object p2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 127
    return-void
.end method

.method private indent()V
    .registers 5

    .line 563
    iget v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 564
    if-gez v0, :cond_5

    .line 573
    :goto_4
    return-void

    .line 566
    :cond_5
    sget-object v1, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 568
    :goto_a
    if-le v0, v1, :cond_17

    .line 569
    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    sget-object v3, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    sub-int/2addr v0, v1

    goto :goto_a

    .line 572
    :cond_17
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    sget-object v2, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->spaces:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private printAnnotations(Ljavax/lang/model/element/Element;)V
    .registers 5

    .line 430
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 432
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 433
    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8

    .line 435
    :cond_1d
    return-void
.end method

.method private printAnnotationsInline(Ljavax/lang/model/element/Element;)V
    .registers 5

    .line 422
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 424
    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 427
    :cond_21
    return-void
.end method

.method private printDocComment(Ljavax/lang/model/element/Element;)V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getDocComment(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_3d

    .line 339
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n\r"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 342
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, "/**"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 345
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 346
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, " *"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_19

    .line 350
    :cond_33
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 351
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " */"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    :cond_3d
    return-void
.end method

.method private printFormalTypeParameters(Ljavax/lang/model/element/Parameterizable;Z)V
    .registers 7

    .line 402
    invoke-interface {p1}, Ljavax/lang/model/element/Parameterizable;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    .line 403
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 404
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x1

    .line 407
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    .line 408
    if-nez v1, :cond_2c

    .line 409
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    :cond_2c
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printAnnotationsInline(Ljavax/lang/model/element/Element;)V

    .line 411
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x0

    move v1, v0

    .line 413
    goto :goto_17

    .line 415
    :cond_3b
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    if-eqz p2, :cond_4b

    .line 417
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    :cond_4b
    return-void
.end method

.method private printInterfaces(Ljavax/lang/model/element/TypeElement;)V
    .registers 6

    .line 499
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 501
    sget-object v1, Ljavax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_50

    .line 502
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v1

    .line 503
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_50

    .line 504
    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, " implements"

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x1

    .line 507
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 508
    if-nez v1, :cond_3a

    .line 509
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    :cond_3a
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    move v1, v0

    .line 513
    goto :goto_25

    .line 504
    :cond_4d
    const-string v0, " extends"

    goto :goto_1c

    .line 516
    :cond_50
    return-void
.end method

.method private printModifiers(Ljavax/lang/model/element/Element;)V
    .registers 6

    .line 356
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 357
    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_10

    .line 358
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printAnnotationsInline(Ljavax/lang/model/element/Element;)V

    .line 364
    :goto_b
    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_17

    .line 398
    :cond_f
    return-void

    .line 360
    :cond_10
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printAnnotations(Ljavax/lang/model/element/Element;)V

    .line 361
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    goto :goto_b

    .line 367
    :cond_17
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 368
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 370
    sget-object v2, Lcom/sun/tools/javac/processing/PrintingProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_76

    const/4 v2, 0x3

    if-eq v0, v2, :cond_70

    const/4 v2, 0x4

    if-eq v0, v2, :cond_70

    const/4 v2, 0x5

    if-eq v0, v2, :cond_65

    const/4 v2, 0x6

    if-eq v0, v2, :cond_76

    .line 395
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 396
    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3e

    .line 377
    :cond_65
    sget-object v0, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 373
    :cond_70
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 383
    :cond_76
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_3a

    .line 385
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 386
    sget-object v0, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method private printParameters(Ljavax/lang/model/element/ExecutableElement;)V
    .registers 12

    const/4 v9, 0x2

    const/4 v3, 0x1

    .line 439
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 440
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 442
    if-eqz v5, :cond_af

    if-eq v5, v3, :cond_b0

    .line 465
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 466
    if-ne v2, v9, :cond_27

    .line 467
    iget v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 469
    :cond_27
    if-le v2, v3, :cond_2c

    .line 470
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 472
    :cond_2c
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printModifiers(Ljavax/lang/model/element/Element;)V

    .line 474
    if-ne v2, v5, :cond_99

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 475
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 476
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_82

    .line 478
    iget-object v7, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-class v8, Ljavax/lang/model/type/ArrayType;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 480
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v7, "..."

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    :goto_5b
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    if-ge v2, v5, :cond_7e

    .line 486
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    :cond_7e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 489
    goto :goto_13

    .line 477
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Var-args parameter is not an array type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 482
    :cond_99
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_5b

    .line 491
    :cond_a3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_af

    .line 492
    iget v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 444
    :cond_af
    return-void

    .line 447
    :cond_b0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 448
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printModifiers(Ljavax/lang/model/element/Element;)V

    .line 450
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 451
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 452
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_108

    .line 454
    iget-object v3, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-class v4, Ljavax/lang/model/type/ArrayType;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    :goto_ed
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b4

    .line 453
    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Var-args parameter is not an array type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 457
    :cond_11f
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_ed
.end method

.method private printThrows(Ljavax/lang/model/element/ExecutableElement;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v7, 0x2

    .line 519
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 521
    if-eqz v3, :cond_54

    .line 522
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v4, " throws"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 526
    if-ne v1, v2, :cond_2d

    .line 527
    iget-object v5, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    :cond_2d
    if-ne v1, v7, :cond_35

    .line 530
    iget v5, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 532
    :cond_35
    if-lt v1, v7, :cond_3a

    .line 533
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 535
    :cond_3a
    iget-object v5, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 537
    if-eq v1, v3, :cond_48

    .line 538
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 541
    goto :goto_18

    .line 543
    :cond_4c
    if-lt v3, v7, :cond_54

    .line 544
    iget v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 546
    :cond_54
    return-void
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .registers 4

    .line 131
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 133
    :cond_d
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printDocComment(Ljavax/lang/model/element/Element;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printModifiers(Ljavax/lang/model/element/Element;)V

    .line 135
    return-object p0
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 332
    return-void
.end method

.method public visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .registers 8

    const/4 v4, 0x1

    .line 140
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 142
    sget-object v1, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_24

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_24

    .line 144
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 147
    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v2, :cond_25

    if-eqz v1, :cond_25

    sget-object v2, Ljavax/lang/model/element/NestingKind;->ANONYMOUS:Ljavax/lang/model/element/NestingKind;

    new-instance v3, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;

    invoke-direct {v3, p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;-><init>(Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;)V

    .line 156
    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor$1;->visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_25

    .line 185
    :cond_24
    :goto_24
    return-object p0

    .line 159
    :cond_25
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 160
    invoke-direct {p0, p1, v4}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printFormalTypeParameters(Ljavax/lang/model/element/Parameterizable;Z)V

    .line 162
    sget-object v1, Lcom/sun/tools/javac/processing/PrintingProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_96

    const/4 v1, 0x2

    if-eq v0, v1, :cond_74

    .line 166
    :goto_3c
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printParameters(Ljavax/lang/model/element/ExecutableElement;)V

    .line 177
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_69

    .line 180
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    :cond_69
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printThrows(Ljavax/lang/model/element/ExecutableElement;)V

    .line 183
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 169
    :cond_74
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3c

    .line 165
    :cond_96
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .registers 6

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 323
    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->isUnnamed()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 324
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    :goto_2d
    return-object p0

    .line 326
    :cond_2e
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "// Unnamed package"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .registers 11

    const/4 v2, 0x0

    .line 191
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    .line 192
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getNestingKind()Ljavax/lang/model/element/NestingKind;

    move-result-object v0

    .line 194
    sget-object v1, Ljavax/lang/model/element/NestingKind;->ANONYMOUS:Ljavax/lang/model/element/NestingKind;

    .line 230
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 194
    if-ne v1, v0, :cond_9c

    .line 198
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_92

    .line 204
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 208
    :goto_2c
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 216
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 220
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printParameters(Ljavax/lang/model/element/ExecutableElement;)V

    .line 222
    :cond_50
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    :goto_57
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 260
    sget-object v0, Ljavax/lang/model/element/ElementKind;->ENUM:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v0, :cond_18b

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7a
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 266
    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v6, v7, :cond_7a

    .line 267
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 206
    :cond_92
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_2c

    .line 224
    :cond_9c
    sget-object v1, Ljavax/lang/model/element/NestingKind;->TOP_LEVEL:Ljavax/lang/model/element/NestingKind;

    if-ne v0, v1, :cond_cb

    .line 225
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getPackageOf(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->isUnnamed()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 227
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    :cond_cb
    invoke-virtual {p0, p1, v4}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 232
    sget-object v0, Lcom/sun/tools/javac/processing/PrintingProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_139

    .line 237
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    :goto_e6
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 242
    invoke-direct {p0, p1, v2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printFormalTypeParameters(Ljavax/lang/model/element/Parameterizable;Z)V

    .line 245
    sget-object v0, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v0, :cond_134

    .line 246
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v5, :cond_134

    move-object v0, v1

    .line 248
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 249
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 250
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v5, :cond_134

    .line 251
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " extends "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    :cond_134
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->printInterfaces(Ljavax/lang/model/element/TypeElement;)V

    goto/16 :goto_57

    .line 234
    :cond_139
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "@interface"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e6

    .line 269
    :cond_141
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_177

    move v1, v2

    .line 271
    :goto_148
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_164

    .line 272
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visit(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_148

    .line 275
    :cond_164
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    invoke-virtual {p0, v0, v4}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visit(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-interface {v3, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 281
    :cond_177
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 282
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;

    goto :goto_17b

    .line 284
    :cond_18b
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_193
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 285
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visit(Ljavax/lang/model/element/Element;)Ljava/lang/Object;

    goto :goto_193

    .line 288
    :cond_1a3
    iget v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indentation:I

    .line 289
    invoke-direct {p0}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->indent()V

    .line 290
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    return-object p0
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 316
    return-object p0
.end method

.method public bridge synthetic visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;
    .registers 6

    .line 296
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    .line 299
    sget-object v1, Ljavax/lang/model/element/ElementKind;->ENUM_CONSTANT:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_15

    .line 300
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 310
    :goto_14
    return-object p0

    .line 302
    :cond_15
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_52

    .line 305
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->elementUtils:Ljavax/lang/model/util/Elements;

    invoke-interface {v2, v0}, Ljavax/lang/model/util/Elements;->getConstantExpression(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    :cond_52
    iget-object v0, p0, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->writer:Ljava/io/PrintWriter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public bridge synthetic visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 116
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Boolean;)Lcom/sun/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    move-result-object v0

    return-object v0
.end method
