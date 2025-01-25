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
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field matchPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$misMatchingInnerClass(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->isMatchingInnerClass(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMatchingPackage(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->isMatchingPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprintMatch(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->printMatch(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvisitClassAnnotation(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->visitClassAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvisitPackageAnnotation(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->visitPackageAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    .line 55
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    return-void
.end method

.method private isMatchingInnerClass(Ljava/lang/String;)Z
    .registers 4

    .line 255
    nop

    :cond_1
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 256
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_18
    return v1
.end method

.method private isMatchingPackage(Ljava/lang/String;)Z
    .registers 4

    .line 273
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 277
    const-string p1, ""

    goto :goto_11

    .line 280
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 283
    :goto_11
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private printMatch(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V
    .registers 6

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 224
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$2;->$SwitchMap$com$s1243808733$android$dx$command$annotool$Main$PrintType:[I

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    goto :goto_8

    .line 233
    :cond_23
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchInnerClassesOf:Ljava/util/HashSet;

    .line 234
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 228
    :cond_35
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 229
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_4f
    return-void
.end method

.method private printMatchPackage(Ljava/lang/String;)V
    .registers 6

    .line 202
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    .line 203
    sget-object v2, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$2;->$SwitchMap$com$s1243808733$android$dx$command$annotool$Main$PrintType:[I

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_37

    const/4 v2, 0x2

    if-eq v1, v2, :cond_37

    const/4 v2, 0x3

    if-eq v1, v2, :cond_37

    const/4 v2, 0x4

    if-eq v1, v2, :cond_29

    goto :goto_8

    .line 210
    :cond_29
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 207
    :cond_37
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->matchPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_3d
    return-void
.end method

.method private visitClassAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 151
    :cond_d
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 153
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 155
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->printMatch(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;)V

    goto :goto_19

    :cond_3f
    return-void
.end method

.method private visitPackageAnnotation(Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 173
    :cond_d
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 175
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 178
    const-string p1, ""

    goto :goto_2a

    .line 181
    :cond_25
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_2a
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/attrib/BaseAnnotations;->getAnnotations()Lcom/s1243808733/android/dx/rop/annotation/Annotations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/annotation/Annotations;->getAnnotations()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_36
    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 187
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 189
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->printMatchPackage(Ljava/lang/String;)V

    goto :goto_36

    :cond_5c
    return-void
.end method


# virtual methods
.method process()V
    .registers 8

    .line 60
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;->args:Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->files:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 63
    new-instance v4, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;

    new-instance v5, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;

    invoke-direct {v5, p0}, Lcom/s1243808733/android/dx/command/annotool/AnnotationLister$1;-><init>(Lcom/s1243808733/android/dx/command/annotool/AnnotationLister;)V

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v5}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    .line 134
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->process()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method
