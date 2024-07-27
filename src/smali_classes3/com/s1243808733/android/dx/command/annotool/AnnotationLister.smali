.class Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;
.super Ljava/lang/Object;
.source "AnnotationLister.java"


# static fields
.field private static final PACKAGE_INFO:Ljava/lang/String; = "package-info"


# instance fields
.field private final args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

.field matchInnerClassesOf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field matchPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    .line 55
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    return-void
.end method

.method static synthetic access$1000005(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->visitClassAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    return-void
.end method

.method static synthetic access$1000006(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->visitPackageAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    return-void
.end method

.method static synthetic access$1000008(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->printMatch(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    return-void
.end method

.method static synthetic access$1000009(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->isMatchingInnerClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000010(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->isMatchingPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->PACKAGE_INFO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->PACKAGE_INFO:Ljava/lang/String;

    return-void
.end method

.method private isMatchingInnerClass(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 255
    :cond_0
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gtz v1, :cond_1

    .line 262
    :goto_0
    return v0

    .line 256
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 257
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMatchingPackage(Ljava/lang/String;)Z
    .registers 4

    .line 273
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 275
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 277
    const-string v0, ""

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 279
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private printMatch(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            ")V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 223
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 224
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->CLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-ne v0, v2, :cond_2

    .line 226
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 229
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->INNERCLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-ne v0, v2, :cond_3

    .line 233
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_3
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->METHOD:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-eq v0, v2, :cond_0

    .line 238
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->PACKAGE:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method private printMatchPackage(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 211
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 202
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 203
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->CLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-ne v0, v2, :cond_3

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_3
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->INNERCLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->METHOD:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-eq v0, v2, :cond_2

    .line 208
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->PACKAGE:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    if-ne v0, v2, :cond_0

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private visitClassAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            "Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;",
            ")V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 152
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v2, v2, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->printMatch(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    goto :goto_0
.end method

.method private visitPackageAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
            "Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;",
            ")V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 175
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 177
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 178
    const-string v0, ""

    move-object v1, v0

    .line 185
    :goto_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 189
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 186
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v3, v3, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->printMatchPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method process()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v1, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->files:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 60
    :cond_0
    aget-object v2, v1, v0

    .line 61
    new-instance v3, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    const/4 v4, 0x1

    new-instance v5, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;

    invoke-direct {v5, p0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$100000000;-><init>(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    .line 134
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->process()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
